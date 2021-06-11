// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$_$_CardFromJson(Map<String, dynamic> json) {
  return _$_Card(
    id: json['id'] as String? ?? '',
    offensiveAbility: json['offensiveAbility'] as int? ?? 0,
    equipmentAttackPower: json['equipmentAttackPower'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_CardToJson(_$_Card instance) => <String, dynamic>{
      'id': instance.id,
      'offensiveAbility': instance.offensiveAbility,
      'equipmentAttackPower': instance.equipmentAttackPower,
    };
