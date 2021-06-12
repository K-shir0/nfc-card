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
     * ゲームエンド
     */
    @Default(false) bool gameEndFlg,
  }) = _DuelState;

  factory DuelState.create() {
    final List<List<Card>> decks = [];

    for (int i = 0; i < 2; i++) {
      decks.add([
        Card.create(100, 50),
        Card.create(100, 30),
        Card.create(60, 50),
        Card.create(60, 20),
        Card.create(40, 30),
        Card.create(40, 20),
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

  void onCardClickHandler(String cardId) {
    final phase = state.phase;
    // プレイヤーのターン、先手後攻もここで入れ替えられる。
    final playerTurn = state.turn % 2;

    /*
    * ターン処理
    * ・先手がモンスター用のカードを1枚読み込ませる。
    * ・先手が装備用のカードを1枚読み込ませる。
    * ・後手がモンスター用のカードを1枚読み込ませる。
    * ・後手が装備用のカードを1枚読み込ませる。
    * ・同時にモンスター用カードの全貌と装備用のカードのステータスのみを表示する。
    * ・勝敗判定を表示する。
    * ・お互いのモンスター用のカードのみを表示する。(確認のため)
    * ・現在のトータル戦績を表示する。
    * ・先手後手を入れ替える。
   */
    final card = getById(playerTurn, cardId);

    if (card == null) return;

    // モンスターカードをセット
    if (phase == 0) setMonsterCard(playerTurn, card);

    // 装備カードをセット
    if (phase == 1) setEquipmentCard(playerTurn, card);

    // フェイズを進める
    state = state.copyWith(phase: phase + 1);

    // 対戦処理
    if (playerTurn == 1 && state.phase == 2) {
      final player0AttackSum =
          (state.monsterCardsPlacedOnTheFieldByPlayer0?.offensiveAbility ?? 0) +
              (state.equipmentCardsPlacedOnTheFieldByPlayer0
                      ?.equipmentAttackPower ??
                  0);
      final player1AttackSum =
          (state.monsterCardsPlacedOnTheFieldByPlayer1?.offensiveAbility ?? 0) +
              (state.equipmentCardsPlacedOnTheFieldByPlayer1
                      ?.equipmentAttackPower ??
                  0);

      if (player0AttackSum > player1AttackSum) {
        state =
            state.copyWith(battlesWonByPlayer0: state.battlesWonByPlayer0 + 1);
      }
      if (player1AttackSum > player0AttackSum) {
        state =
            state.copyWith(battlesWonByPlayer1: state.battlesWonByPlayer1 + 1);
      }

      if (state.turn == 6 ||
          state.battlesWonByPlayer1 >= 2 ||
          state.battlesWonByPlayer0 >= 2) {
        // ゲーム終了のフラグセット
        state = state.copyWith(gameEndFlg: true);

        if (state.battlesWonByPlayer0 > state.battlesWonByPlayer1) {
          print("1Pの勝ち");
        } else if (state.battlesWonByPlayer1 > state.battlesWonByPlayer0) {
          print("2Pの勝ち");
        } else {
          print("引き分け");
        }
      }

      // カードのセットをリセット
      state = state.copyWith(
        monsterCardsPlacedOnTheFieldByPlayer0: null,
        monsterCardsPlacedOnTheFieldByPlayer1: null,
        equipmentCardsPlacedOnTheFieldByPlayer0: null,
        equipmentCardsPlacedOnTheFieldByPlayer1: null,
      );
    }

    if (state.phase == 2) {
      state = state.copyWith(phase: 0, turn: state.turn + 1);
    }
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
