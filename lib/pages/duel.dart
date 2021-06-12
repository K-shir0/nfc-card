import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_card/models/duel_state.dart';

class DuelPage extends HookWidget {
  final duelStateNotifierProvider =
      StateNotifierProvider<DuelStateNotifier, DuelState>(
    (refs) => DuelStateNotifier(),
  );

  @override
  Widget build(BuildContext context) {
    final provider = useProvider(duelStateNotifierProvider);

    /*
   ターン処理
  ・先手がモンスター用のカードを1枚読み込ませる。
  ・先手が装備用のカードを1枚読み込ませる。
  ・後手がモンスター用のカードを1枚読み込ませる。
  ・後手が装備用のカードを1枚読み込ませる。
  ・同時にモンスター用カードの全貌と装備用のカードのステータスのみを表示する。
  ・勝敗判定を表示する。
  ・お互いのモンスター用のカードのみを表示する。(確認のため)
  ・現在のトータル戦績を表示する。
  ・先手後手を入れ替える。
   */
    // context.read(duelStateNotifierProvider.notifier).setMonsterCard(0, );

    final playerTurn = provider.turn % 2;
    final playerDeck =
        [provider.player0Deck, provider.player1Deck].toList()[playerTurn];

    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(' '),
              const Text(' '),
              Text('turn: ${provider.turn}'),
              Text('phase: ${provider.phase}'),
              Text('0pWin: ${provider.battlesWonByPlayer0}'),
              Text('1pWin: ${provider.battlesWonByPlayer1}'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  for (int i = 0; i < playerDeck.length; i++)
                    CardWidget(
                        onTapHandler: () {
                          context
                              .read(duelStateNotifierProvider.notifier)
                              .onCardClickHandler(playerDeck[i].id);
                        },
                        value1: playerDeck[i].offensiveAbility,
                        value2: playerDeck[i].equipmentAttackPower),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final Function() onTapHandler;
  final int value1;
  final int value2;

  const CardWidget(
      {required this.onTapHandler, required this.value1, required this.value2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapHandler,
      child: Container(
        color: Colors.red,
        height: 88,
        width: 58,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(value1.toString()),
            Text(value2.toString()),
          ],
        ),
      ),
    );
  }
}
