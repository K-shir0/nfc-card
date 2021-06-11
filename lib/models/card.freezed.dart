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

  _Card call({String id = '', int offensiveAbility = 0}) {
    return _Card(
      id: id,
      offensiveAbility: offensiveAbility,
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
  int get offensiveAbility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call({String id, int offensiveAbility});
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
    Object? offensiveAbility = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      offensiveAbility: offensiveAbility == freezed
          ? _value.offensiveAbility
          : offensiveAbility // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call({String id, int offensiveAbility});
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
    Object? offensiveAbility = freezed,
  }) {
    return _then(_Card(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      offensiveAbility: offensiveAbility == freezed
          ? _value.offensiveAbility
          : offensiveAbility // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Card with DiagnosticableTreeMixin implements _Card {
  const _$_Card({this.id = '', this.offensiveAbility = 0});

  factory _$_Card.fromJson(Map<String, dynamic> json) =>
      _$_$_CardFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: 0)
  @override
  final int offensiveAbility;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Card(id: $id, offensiveAbility: $offensiveAbility)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Card'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('offensiveAbility', offensiveAbility));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.offensiveAbility, offensiveAbility) ||
                const DeepCollectionEquality()
                    .equals(other.offensiveAbility, offensiveAbility)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(offensiveAbility);

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
  const factory _Card({String id, int offensiveAbility}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get offensiveAbility => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardCopyWith<_Card> get copyWith => throw _privateConstructorUsedError;
}
