import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_card/models/duel_state.dart';

class DuelPage extends HookWidget {
  final duelStateNotifierProvider = StateNotifierProvider<DuelStateNotifier, DuelState>(
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

    return Scaffold(
      body: Stack(
        children: [
          Container(),
        ],
      ),
    );
  }
}
