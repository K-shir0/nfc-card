import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    final playerDecks = [provider.handful0, provider.handful1].toList();

    final MethodChannel _methodChannel =
    MethodChannel("samples.flutter.dev/nfc");

    Future<String> scanNfcTag() async {
      String _uid = "";

      try {
        // _uid = await _methodChannel.invokeMethod("getNfcTag");
        final uid = await _methodChannel.invokeMethod("getNfcTag");

        return uid.toString();
      } catch (e) {
        print(e);
      }

      return _uid;
    }

    const Map<String, String> nfcs = {
      "04b2296a6f7180": "A",
      "04ae296a6f7180": "A",
      "04c2296a6f7180": "B",
      "04a1296a6f7180": "B",
      "04ba296a6f7180": "C",
      "04b6296a6f7180": "C",
      "04a9296a6f7180": "D",
      "04a5296a6f7180": "D",
      "04c6296a6f7180": "E",
      "04be296a6f7180": "E",
      "04b72b6a6f7180": "F",
      "04bb2b6a6f7180": "F",
    };

    String winText() {
      if (provider.winFlag == 0) return "1Pの勝利";
      if (provider.winFlag == 1) return "2Pの勝利";
      if (provider.winFlag == -1) return "引き分け";

      return "";
    }

    Widget? test(gameCard.Card card) {
      if ((provider.phase == 0 || provider.phase == 2) && card.monsterUsed) {
        return null;
      }

      return CardWidget(
        onTapHandler: () {
          context
              .read(duelStateNotifierProvider.notifier)
              .onCardClickHandler(card.id);
        },
        card: card,
      );
    }

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
              child: Text(winText()),
            ),
          if (provider.phase >= 4)
            GestureDetector(
              onTap: () {
                print("次のフェイズに進める");
                context.read(duelStateNotifierProvider.notifier).nextPhase();
              },
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
          // 手札の表示
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // プレイヤーのターンが指定されていなければ表示しない
              if (provider.playerTurn > -1)
              // Row(
              //   children: [
              //     for (int i = 0;
              //         i < playerDecks[provider.playerTurn].length;
              //         i++)
              //       // モンスターカードが使用済みならモンスター出すターンで表示しない
              //       test(playerDecks[provider.playerTurn][i]) ?? Text("test")
              //   ],
              // )
                ElevatedButton(
                  onPressed: () {
                    scanNfcTag().then((value) {
                      var findFlag = false;
                      final playerDeck = playerDecks[provider.playerTurn];
                      print(value);
                      for (int i = 0; i < playerDeck.length && !findFlag; i++) {
                        if (playerDeck[i].type == nfcs[value.toString()]) {
                          // 見つけた
                          findFlag = true;
                          print("test");

                          if ((provider.phase == 0 || provider.phase == 2) &&
                              playerDeck[i].monsterUsed) {
                            return null;
                          }

                          context
                              .read(duelStateNotifierProvider.notifier)
                              .onCardClickHandler(
                              playerDecks[provider.playerTurn][i].id);
                        }
                      }
                    });
                  },
                  child: Text("NFC"),
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
            if (card != null) Text(card!.type),
            Text('${card?.equipmentAttackPower ?? ''}'),
          ],
        ),
      ),
    );
  }
}
