// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
class _$CardTearOff {
  const _$CardTearOff();

  _Card call(
      {String id = '',
      String type = '',
      int offensiveAbility = 0,
      bool monsterUsed = false,
      int equipmentAttackPower = 0}) {
    return _Card(
      id: id,
      type: type,
      offensiveAbility: offensiveAbility,
      monsterUsed: monsterUsed,
      equipmentAttackPower: equipmentAttackPower,
    );
  }

  Card fromJson(Map<String, Object> json) {
    return Card.fromJson(json);
  }
}

/// @nodoc
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get offensiveAbility => throw _privateConstructorUsedError;
  bool get monsterUsed => throw _privateConstructorUsedError;
  int get equipmentAttackPower => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String type,
      int offensiveAbility,
      bool monsterUsed,
      int equipmentAttackPower});
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? offensiveAbility = freezed,
    Object? monsterUsed = freezed,
    Object? equipmentAttackPower = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      offensiveAbility: offensiveAbility == freezed
          ? _value.offensiveAbility
          : offensiveAbility // ignore: cast_nullable_to_non_nullable
              as int,
      monsterUsed: monsterUsed == freezed
          ? _value.monsterUsed
          : monsterUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      equipmentAttackPower: equipmentAttackPower == freezed
          ? _value.equipmentAttackPower
          : equipmentAttackPower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String type,
      int offensiveAbility,
      bool monsterUsed,
      int equipmentAttackPower});
}

/// @nodoc
class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? offensiveAbility = freezed,
    Object? monsterUsed = freezed,
    Object? equipmentAttackPower = freezed,
  }) {
    return _then(_Card(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      offensiveAbility: offensiveAbility == freezed
          ? _value.offensiveAbility
          : offensiveAbility // ignore: cast_nullable_to_non_nullable
              as int,
      monsterUsed: monsterUsed == freezed
          ? _value.monsterUsed
          : monsterUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      equipmentAttackPower: equipmentAttackPower == freezed
          ? _value.equipmentAttackPower
          : equipmentAttackPower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Card with DiagnosticableTreeMixin implements _Card {
  const _$_Card(
      {this.id = '',
      this.type = '',
      this.offensiveAbility = 0,
      this.monsterUsed = false,
      this.equipmentAttackPower = 0});

  factory _$_Card.fromJson(Map<String, dynamic> json) =>
      _$_$_CardFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: 0)
  @override
  final int offensiveAbility;
  @JsonKey(defaultValue: false)
  @override
  final bool monsterUsed;
  @JsonKey(defaultValue: 0)
  @override
  final int equipmentAttackPower;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Card(id: $id, type: $type, offensiveAbility: $offensiveAbility, monsterUsed: $monsterUsed, equipmentAttackPower: $equipmentAttackPower)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Card'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('offensiveAbility', offensiveAbility))
      ..add(DiagnosticsProperty('monsterUsed', monsterUsed))
      ..add(DiagnosticsProperty('equipmentAttackPower', equipmentAttackPower));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.offensiveAbility, offensiveAbility) ||
                const DeepCollectionEquality()
                    .equals(other.offensiveAbility, offensiveAbility)) &&
            (identical(other.monsterUsed, monsterUsed) ||
                const DeepCollectionEquality()
                    .equals(other.monsterUsed, monsterUsed)) &&
            (identical(other.equipmentAttackPower, equipmentAttackPower) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentAttackPower, equipmentAttackPower)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(offensiveAbility) ^
      const DeepCollectionEquality().hash(monsterUsed) ^
      const DeepCollectionEquality().hash(equipmentAttackPower);

  @JsonKey(ignore: true)
  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardToJson(this);
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {String id,
      String type,
      int offensiveAbility,
      bool monsterUsed,
      int equipmentAttackPower}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  int get offensiveAbility => throw _privateConstructorUsedError;
  @override
  bool get monsterUsed => throw _privateConstructorUsedError;
  @override
  int get equipmentAttackPower => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardCopyWith<_Card> get copyWith => throw _privateConstructorUsedError;
}
