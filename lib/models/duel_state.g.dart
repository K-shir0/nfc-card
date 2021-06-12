// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duel_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DuelState _$_$_DuelStateFromJson(Map<String, dynamic> json) {
  return _$_DuelState(
    turn: json['turn'] as int? ?? 0,
    phase: json['phase'] as int? ?? 0,
    player0Deck: (json['player0Deck'] as List<dynamic>?)
            ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    player1Deck: (json['player1Deck'] as List<dynamic>?)
            ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    monsterCardsPlacedOnTheFieldByPlayer0:
        json['monsterCardsPlacedOnTheFieldByPlayer0'] == null
            ? null
            : Card.fromJson(json['monsterCardsPlacedOnTheFieldByPlayer0']
                as Map<String, dynamic>),
    monsterCardsPlacedOnTheFieldByPlayer1:
        json['monsterCardsPlacedOnTheFieldByPlayer1'] == null
            ? null
            : Card.fromJson(json['monsterCardsPlacedOnTheFieldByPlayer1']
                as Map<String, dynamic>),
    equipmentCardsPlacedOnTheFieldByPlayer0:
        json['equipmentCardsPlacedOnTheFieldByPlayer0'] == null
            ? null
            : Card.fromJson(json['equipmentCardsPlacedOnTheFieldByPlayer0']
                as Map<String, dynamic>),
    equipmentCardsPlacedOnTheFieldByPlayer1:
        json['equipmentCardsPlacedOnTheFieldByPlayer1'] == null
            ? null
            : Card.fromJson(json['equipmentCardsPlacedOnTheFieldByPlayer1']
                as Map<String, dynamic>),
    battlesWonByPlayer0: json['battlesWonByPlayer0'] as int? ?? 0,
    battlesWonByPlayer1: json['battlesWonByPlayer1'] as int? ?? 0,
    gameEndFlg: json['gameEndFlg'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_DuelStateToJson(_$_DuelState instance) =>
    <String, dynamic>{
      'turn': instance.turn,
      'phase': instance.phase,
      'player0Deck': instance.player0Deck,
      'player1Deck': instance.player1Deck,
      'monsterCardsPlacedOnTheFieldByPlayer0':
          instance.monsterCardsPlacedOnTheFieldByPlayer0,
      'monsterCardsPlacedOnTheFieldByPlayer1':
          instance.monsterCardsPlacedOnTheFieldByPlayer1,
      'equipmentCardsPlacedOnTheFieldByPlayer0':
          instance.equipmentCardsPlacedOnTheFieldByPlayer0,
      'equipmentCardsPlacedOnTheFieldByPlayer1':
          instance.equipmentCardsPlacedOnTheFieldByPlayer1,
      'battlesWonByPlayer0': instance.battlesWonByPlayer0,
      'battlesWonByPlayer1': instance.battlesWonByPlayer1,
      'gameEndFlg': instance.gameEndFlg,
    };
