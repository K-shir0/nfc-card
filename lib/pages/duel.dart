import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_card/models/duel_state.dart';

class DuelPage extends StatelessWidget {
  final provider = StateNotifierProvider<DuelStateNotifier, DuelState>(
    (refs) => DuelStateNotifier(),
  );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("test"),
    );
  }
}
