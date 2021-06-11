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

  setMonsterCard(int playerNumber, Card card) {
    // カードをセット
    state = state.copyWith(monsterCardsPlacedOnTheFieldByPlayer0: card);
  }
}
