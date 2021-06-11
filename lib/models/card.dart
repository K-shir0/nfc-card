import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';

part 'card.g.dart';

@freezed
class Card with _$Card {
  const factory Card(
      {@Default('') String id, @Default(0) int offensiveAbility}) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
