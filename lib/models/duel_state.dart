import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_card/models/card.dart';

part 'duel_state.freezed.dart';

part 'duel_state.g.dart';

@freezed
class DuelState with _$DuelState {
  const factory DuelState({
    /*
     * ターン
     */
    @Default(0) int turn,

    /*
     * プレイヤーのターン
     */
    @Default(0) int playerTurn,

    /*
     * フェイズ
     */
    @Default(0) int phase,

    /*
     * デッキ
     */
    @Default([]) List<Card> player0Deck,
    @Default([]) List<Card> player1Deck,

    /*
     * フィールドに設置した、モンスターカード
     */
    Card? monsterCardsPlacedOnTheFieldByPlayer0,
    Card? monsterCardsPlacedOnTheFieldByPlayer1,

    /*
     * フィールドに設置した、装備カード
     */
    Card? equipmentCardsPlacedOnTheFieldByPlayer0,
    Card? equipmentCardsPlacedOnTheFieldByPlayer1,

    /*
     * バトル勝利回数
     */
    @Default(0) int battlesWonByPlayer0,
    @Default(0) int battlesWonByPlayer1,

    /*
     * どっちが勝利したかのフラグ
     */
    @Default(-1) int winFlag,
    /*
     * ゲームエンド
     */
    @Default(false) bool gameEndFlg,
  }) = _DuelState;

  factory DuelState.create() {
    final List<List<Card>> decks = [];

    for (int i = 0; i < 2; i++) {
      decks.add([
        Card.create("A", 100, 50),
        Card.create("B", 100, 30),
        Card.create("C", 60, 50),
        Card.create("D", 60, 20),
        Card.create("E", 40, 30),
        Card.create("F", 40, 20),
      ]);
    }

    return DuelState(
      player0Deck: decks[0],
      player1Deck: decks[1],
    );
  }

  factory DuelState.fromJson(Map<String, dynamic> json) =>
      _$DuelStateFromJson(json);
}

class DuelStateNotifier extends StateNotifier<DuelState> {
  DuelStateNotifier() : super(DuelState.create());

  Card? getById(int playerNumber, String cardId) {
    if (playerNumber == 0) {
      for (int i = 0; i < state.player0Deck.length; i++) {
        if (state.player0Deck[i].id == cardId) return state.player0Deck[i];
      }
    }

    if (playerNumber == 1) {
      for (int i = 0; i < state.player1Deck.length; i++) {
        if (state.player1Deck[i].id == cardId) return state.player1Deck[i];
      }
    }
  }

  void removeAt(String cardId) {
    final player0deck = [...state.player0Deck];
    final player1deck = [...state.player1Deck];

    for (int i = 0; i < state.player0Deck.length; i++) {
      if (state.player0Deck[i].id == cardId) player0deck.removeAt(i);
    }

    for (int i = 0; i < state.player1Deck.length; i++) {
      if (state.player1Deck[i].id == cardId) player1deck.removeAt(i);
    }

    state = state.copyWith(player0Deck: player0deck, player1Deck: player1deck);
  }

  void nextPhase() {
    state = state.copyWith(phase: state.phase + 1);

    final phase = state.phase;

    // ・同時にモンスター用カードの全貌と装備用のカードのステータスのみを表示する。 phase5

    if (phase == 5) {
      // 1Pの攻撃力合計
      final player0AttackSum =
          (state.monsterCardsPlacedOnTheFieldByPlayer0?.offensiveAbility ?? 0) +
              (state.equipmentCardsPlacedOnTheFieldByPlayer0
                      ?.equipmentAttackPower ??
                  0);

      // 2Pの攻撃量合計
      final player1AttackSum =
          (state.monsterCardsPlacedOnTheFieldByPlayer1?.offensiveAbility ?? 0) +
              (state.equipmentCardsPlacedOnTheFieldByPlayer1
                      ?.equipmentAttackPower ??
                  0);

      if (player0AttackSum > player1AttackSum) {
        state = state.copyWith(
            battlesWonByPlayer0: state.battlesWonByPlayer0 + 1, winFlag: 0);
      }
      if (player1AttackSum > player0AttackSum) {
        state = state.copyWith(
            battlesWonByPlayer1: state.battlesWonByPlayer1 + 1, winFlag: 1);
      }

      if (state.turn == 6 ||
          state.battlesWonByPlayer1 >= 2 ||
          state.battlesWonByPlayer0 >= 2) {
        // ゲーム終了のフラグセット
        state = state.copyWith(gameEndFlg: true);

        if (state.battlesWonByPlayer0 > state.battlesWonByPlayer1) {
          state = state.copyWith(winFlag: 0);
        } else if (state.battlesWonByPlayer1 > state.battlesWonByPlayer0) {
          state = state.copyWith(winFlag: 1);
        } else {
          state = state.copyWith(winFlag: -1);
        }
      }
    }

    // ・勝敗判定を表示する。 phase6

    // 次のターンに進むため盤面をリセットする処理
    if (phase == 7 && !state.gameEndFlg) {
      // カードのセットをリセット
      state = state.copyWith(
          monsterCardsPlacedOnTheFieldByPlayer0: null,
          monsterCardsPlacedOnTheFieldByPlayer1: null,
          equipmentCardsPlacedOnTheFieldByPlayer0: null,
          equipmentCardsPlacedOnTheFieldByPlayer1: null,
          winFlag: -1,
          phase: 0,
          turn: state.turn + 1,
          playerTurn: (state.turn + 1) % 2);
    }
    // ・現在のトータル戦績を表示する。 phase7
  }

  void onCardClickHandler(String cardId) {
    final phase = state.phase;

    /*
    * ターン処理
    * ・先手がモンスター用のカードを1枚読み込ませる。 phase0
    * ・先手が装備用のカードを1枚読み込ませる。 phase1
    * ・後手がモンスター用のカードを1枚読み込ませる。 phase2
    * ・後手が装備用のカードを1枚読み込ませる。 phase3
    * ・同時にモンスター用カードの全貌と装備用のカードのステータスのみを表示する。 phase4
    * ・勝敗判定を表示する。 phase5
    * ・お互いのモンスター用のカードのみを表示する。(確認のため) phase6
    * ・現在のトータル戦績を表示する。 phase7
    * ・先手後手を入れ替える。
   */

    // モンスターカードをセット

    if (phase == 0) {
      final card = getById(state.playerTurn, cardId);
      if (card == null) return;
      setMonsterCard(state.playerTurn, card);
    }

    // 装備カードをセット
    if (phase == 1) {
      final card = getById(state.playerTurn, cardId);
      if (card == null) return;
      setEquipmentCard(state.playerTurn, card);

      state = state.copyWith(playerTurn: (state.playerTurn + 1) % 2);
    }

    // モンスターカードをセット
    if (phase == 2) {
      final card = getById(state.playerTurn, cardId);
      if (card == null) return;
      setMonsterCard(state.playerTurn, card);
    }

    // 装備カードをセット
    if (phase == 3) {
      final card = getById(state.playerTurn, cardId);
      if (card == null) return;
      setEquipmentCard(state.playerTurn, card);

      state = state.copyWith(playerTurn: -1);
    }

    // フェイズを進める
    state = state.copyWith(phase: phase + 1);

    // 対戦処理

    // if (state.phase == 2) {
    //   state = state.copyWith(phase: 0, turn: state.turn + 1);
    // }
  }

  void setMonsterCard(int playerNumber, Card card) {
    // カードをセット
    if (playerNumber == 0) {
      state = state.copyWith(monsterCardsPlacedOnTheFieldByPlayer0: card);
    } else if (playerNumber == 1) {
      state = state.copyWith(monsterCardsPlacedOnTheFieldByPlayer1: card);
    }

    removeAt(card.id);
  }

  void setEquipmentCard(int playerNumber, Card card) {
    // カードをセット
    if (playerNumber == 0) {
      state = state.copyWith(equipmentCardsPlacedOnTheFieldByPlayer0: card);
    } else if (playerNumber == 1) {
      state = state.copyWith(equipmentCardsPlacedOnTheFieldByPlayer1: card);
    }

    removeAt(card.id);
  }
}
