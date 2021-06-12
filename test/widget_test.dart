// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:nfc_card/models/duel_state.dart';

void main() {
  group('Duel Provider', () {
    // final duelStateNotifierProvider =
    //     StateNotifierProvider<DuelStateNotifier, DuelState>(
    //   (refs) => DuelStateNotifier(),
    // );

    final mockStateNotifier = DuelStateNotifier();

    test("モンスターの設置", () {
      mockStateNotifier.setMonsterCard(0, mockStateNotifier.state.player0Deck[0]);

      expect(
        mockStateNotifier.state.monsterCardsPlacedOnTheFieldByPlayer0?.id ?? '',
        equals(
          mockStateNotifier.state.player0Deck[0].id,
        ),
      );
    });
  });
}
