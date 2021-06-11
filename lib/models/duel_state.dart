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
    @Default([]) List<Card> player1Deck,
    @Default([]) List<Card> player2Deck,
    /*
     * フィールドに設置した、モンスターカード
     */
    Card? monsterCardsPlacedOnTheFieldByPlayer1,
    Card? monsterCardsPlacedOnTheFieldByPlayer2,
    /*
     * フィールドに設置した、装備カード
     */
    Card? equipmentCardsPlacedOnTheFieldByPlayer1,
    Card? equipmentCardsPlacedOnTheFieldByPlayer2,
    /*
     * バトル勝利回数
     */
    @Default(0) int battlesWonByPlayer1,
    @Default(0) int battlesWonByPlayer2,
  }) = _DuelState;

  factory DuelState.fromJson(Map<String, dynamic> json) =>
      _$DuelStateFromJson(json);
}

class DuelStateNotifier extends StateNotifier<DuelState> {
  DuelStateNotifier() : super(const DuelState());

}