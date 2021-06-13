import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_card/models/duel_state.dart';
import 'package:nfc_card/models/card.dart' as gameCard;

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

    final playerDecks = [provider.player0Deck, provider.player1Deck].toList();

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
          if (provider.phase >= 6)
            Center(
              child: Text("Win"),
            ),
          if (provider.phase >= 4)
            GestureDetector(
              onTap: () {
                print("次のフェイズに進める");
                context.read(duelStateNotifierProvider.notifier).nextPhase();
              },
            ),
          // 手札の表示
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // プレイヤーのターンが指定されていなければ表示しない
              if (provider.playerTurn > -1)
                Row(
                  children: [
                    for (int i = 0;
                        i < playerDecks[provider.playerTurn].length;
                        i++)
                      CardWidget(
                        onTapHandler: () {
                          context
                              .read(duelStateNotifierProvider.notifier)
                              .onCardClickHandler(
                                  playerDecks[provider.playerTurn][i].id);
                        },
                        card: playerDecks[provider.playerTurn][i],
                      ),
                  ],
                ),
            ],
          ),
          /*
           * 設置されたカードの表示
           */
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*
               * 2P側
               */
              RotatedBox(
                quarterTurns: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (provider.monsterCardsPlacedOnTheFieldByPlayer1 !=
                          null)
                        provider.phase >= 5
                            ? CardWidget(
                                card: provider
                                    .monsterCardsPlacedOnTheFieldByPlayer1,
                              )
                            : const CardWidget(),
                      if (provider.equipmentCardsPlacedOnTheFieldByPlayer1 !=
                          null)
                        provider.phase >= 5
                            ? CardWidget(
                                card: provider
                                    .equipmentCardsPlacedOnTheFieldByPlayer1,
                                isValue1Visible: false,
                              )
                            : CardWidget(),
                    ],
                  ),
                ),
              ),
              /*
               * 1P側
               */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (provider.monsterCardsPlacedOnTheFieldByPlayer0 != null)
                      provider.phase >= 5
                          ? CardWidget(
                              card: provider
                                  .monsterCardsPlacedOnTheFieldByPlayer0,
                            )
                          : const CardWidget(),
                    if (provider.equipmentCardsPlacedOnTheFieldByPlayer0 !=
                        null)
                      provider.phase >= 5
                          ? CardWidget(
                        card: provider
                            .equipmentCardsPlacedOnTheFieldByPlayer0,
                        isValue1Visible: false,
                      )
                          : const CardWidget(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final Function()? onTapHandler;
  final bool isValue1Visible;
  final gameCard.Card? card;

  const CardWidget({this.onTapHandler, this.card, this.isValue1Visible = true});

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
            if (isValue1Visible)
              Text('${card?.offensiveAbility ?? ''}')
            else
              const Text(''),
            Text('${card?.equipmentAttackPower ?? ''}'),
          ],
        ),
      ),
    );
  }
}
