import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'card.freezed.dart';

part 'card.g.dart';

var _uuid = const Uuid();

@freezed
class Card with _$Card {
  const factory Card({
    @Default('') String id,
    @Default('') String type,
    @Default(0) final int offensiveAbility,
    @Default(false) bool monsterUsed,
    @Default(0) final int equipmentAttackPower,
  }) = _Card;

  factory Card.create(
      String type, int offensiveAbility, int equipmentAttackPower) {
    return Card(
      id: _uuid.v4(),
      type: type,
      offensiveAbility: offensiveAbility,
      equipmentAttackPower: equipmentAttackPower,
    );
  }

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
