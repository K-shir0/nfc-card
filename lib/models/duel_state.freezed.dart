// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'duel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DuelState _$DuelStateFromJson(Map<String, dynamic> json) {
  return _DuelState.fromJson(json);
}

/// @nodoc
class _$DuelStateTearOff {
  const _$DuelStateTearOff();

  _DuelState call(
      {int turn = 0,
      int playerTurn = 0,
      int phase = 0,
      List<Card> player0Deck = const [],
      List<Card> player1Deck = const [],
      List<Card> handful0 = const [],
      List<Card> handful1 = const [],
      Card? monsterCardsPlacedOnTheFieldByPlayer0,
      Card? monsterCardsPlacedOnTheFieldByPlayer1,
      Card? equipmentCardsPlacedOnTheFieldByPlayer0,
      Card? equipmentCardsPlacedOnTheFieldByPlayer1,
      int battlesWonByPlayer0 = 0,
      int battlesWonByPlayer1 = 0,
      int winFlag = -1,
      bool gameEndFlg = false}) {
    return _DuelState(
      turn: turn,
      playerTurn: playerTurn,
      phase: phase,
      player0Deck: player0Deck,
      player1Deck: player1Deck,
      handful0: handful0,
      handful1: handful1,
      monsterCardsPlacedOnTheFieldByPlayer0:
          monsterCardsPlacedOnTheFieldByPlayer0,
      monsterCardsPlacedOnTheFieldByPlayer1:
          monsterCardsPlacedOnTheFieldByPlayer1,
      equipmentCardsPlacedOnTheFieldByPlayer0:
          equipmentCardsPlacedOnTheFieldByPlayer0,
      equipmentCardsPlacedOnTheFieldByPlayer1:
          equipmentCardsPlacedOnTheFieldByPlayer1,
      battlesWonByPlayer0: battlesWonByPlayer0,
      battlesWonByPlayer1: battlesWonByPlayer1,
      winFlag: winFlag,
      gameEndFlg: gameEndFlg,
    );
  }

  DuelState fromJson(Map<String, Object> json) {
    return DuelState.fromJson(json);
  }
}

/// @nodoc
const $DuelState = _$DuelStateTearOff();

/// @nodoc
mixin _$DuelState {
/*
     * ターン
     */
  int get turn => throw _privateConstructorUsedError;
  /*
     * プレイヤーのターン
     */
  int get playerTurn => throw _privateConstructorUsedError;
  /*
     * フェイズ
     */
  int get phase => throw _privateConstructorUsedError;
  /*
     * デッキ
     */
  List<Card> get player0Deck => throw _privateConstructorUsedError;
  List<Card> get player1Deck => throw _privateConstructorUsedError;
  /*
     * 手札
     */
  List<Card> get handful0 => throw _privateConstructorUsedError;
  List<Card> get handful1 => throw _privateConstructorUsedError;
  /*
     * フィールドに設置した、モンスターカード
     */
  Card? get monsterCardsPlacedOnTheFieldByPlayer0 =>
      throw _privateConstructorUsedError;
  Card? get monsterCardsPlacedOnTheFieldByPlayer1 =>
      throw _privateConstructorUsedError;
  /*
     * フィールドに設置した、装備カード
     */
  Card? get equipmentCardsPlacedOnTheFieldByPlayer0 =>
      throw _privateConstructorUsedError;
  Card? get equipmentCardsPlacedOnTheFieldByPlayer1 =>
      throw _privateConstructorUsedError;
  /*
     * バトル勝利回数
     */
  int get battlesWonByPlayer0 => throw _privateConstructorUsedError;
  int get battlesWonByPlayer1 => throw _privateConstructorUsedError;
  /*
     * どっちが勝利したかのフラグ
     */
  int get winFlag => throw _privateConstructorUsedError;
  /*
     * ゲームエンド
     */
  bool get gameEndFlg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuelStateCopyWith<DuelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuelStateCopyWith<$Res> {
  factory $DuelStateCopyWith(DuelState value, $Res Function(DuelState) then) =
      _$DuelStateCopyWithImpl<$Res>;
  $Res call(
      {int turn,
      int playerTurn,
      int phase,
      List<Card> player0Deck,
      List<Card> player1Deck,
      List<Card> handful0,
      List<Card> handful1,
      Card? monsterCardsPlacedOnTheFieldByPlayer0,
      Card? monsterCardsPlacedOnTheFieldByPlayer1,
      Card? equipmentCardsPlacedOnTheFieldByPlayer0,
      Card? equipmentCardsPlacedOnTheFieldByPlayer1,
      int battlesWonByPlayer0,
      int battlesWonByPlayer1,
      int winFlag,
      bool gameEndFlg});

  $CardCopyWith<$Res>? get monsterCardsPlacedOnTheFieldByPlayer0;
  $CardCopyWith<$Res>? get monsterCardsPlacedOnTheFieldByPlayer1;
  $CardCopyWith<$Res>? get equipmentCardsPlacedOnTheFieldByPlayer0;
  $CardCopyWith<$Res>? get equipmentCardsPlacedOnTheFieldByPlayer1;
}

/// @nodoc
class _$DuelStateCopyWithImpl<$Res> implements $DuelStateCopyWith<$Res> {
  _$DuelStateCopyWithImpl(this._value, this._then);

  final DuelState _value;
  // ignore: unused_field
  final $Res Function(DuelState) _then;

  @override
  $Res call({
    Object? turn = freezed,
    Object? playerTurn = freezed,
    Object? phase = freezed,
    Object? player0Deck = freezed,
    Object? player1Deck = freezed,
    Object? handful0 = freezed,
    Object? handful1 = freezed,
    Object? monsterCardsPlacedOnTheFieldByPlayer0 = freezed,
    Object? monsterCardsPlacedOnTheFieldByPlayer1 = freezed,
    Object? equipmentCardsPlacedOnTheFieldByPlayer0 = freezed,
    Object? equipmentCardsPlacedOnTheFieldByPlayer1 = freezed,
    Object? battlesWonByPlayer0 = freezed,
    Object? battlesWonByPlayer1 = freezed,
    Object? winFlag = freezed,
    Object? gameEndFlg = freezed,
  }) {
    return _then(_value.copyWith(
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as int,
      playerTurn: playerTurn == freezed
          ? _value.playerTurn
          : playerTurn // ignore: cast_nullable_to_non_nullable
              as int,
      phase: phase == freezed
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      player0Deck: player0Deck == freezed
          ? _value.player0Deck
          : player0Deck // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      player1Deck: player1Deck == freezed
          ? _value.player1Deck
          : player1Deck // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      handful0: handful0 == freezed
          ? _value.handful0
          : handful0 // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      handful1: handful1 == freezed
          ? _value.handful1
          : handful1 // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      monsterCardsPlacedOnTheFieldByPlayer0:
          monsterCardsPlacedOnTheFieldByPlayer0 == freezed
              ? _value.monsterCardsPlacedOnTheFieldByPlayer0
              : monsterCardsPlacedOnTheFieldByPlayer0 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      monsterCardsPlacedOnTheFieldByPlayer1:
          monsterCardsPlacedOnTheFieldByPlayer1 == freezed
              ? _value.monsterCardsPlacedOnTheFieldByPlayer1
              : monsterCardsPlacedOnTheFieldByPlayer1 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      equipmentCardsPlacedOnTheFieldByPlayer0:
          equipmentCardsPlacedOnTheFieldByPlayer0 == freezed
              ? _value.equipmentCardsPlacedOnTheFieldByPlayer0
              : equipmentCardsPlacedOnTheFieldByPlayer0 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      equipmentCardsPlacedOnTheFieldByPlayer1:
          equipmentCardsPlacedOnTheFieldByPlayer1 == freezed
              ? _value.equipmentCardsPlacedOnTheFieldByPlayer1
              : equipmentCardsPlacedOnTheFieldByPlayer1 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      battlesWonByPlayer0: battlesWonByPlayer0 == freezed
          ? _value.battlesWonByPlayer0
          : battlesWonByPlayer0 // ignore: cast_nullable_to_non_nullable
              as int,
      battlesWonByPlayer1: battlesWonByPlayer1 == freezed
          ? _value.battlesWonByPlayer1
          : battlesWonByPlayer1 // ignore: cast_nullable_to_non_nullable
              as int,
      winFlag: winFlag == freezed
          ? _value.winFlag
          : winFlag // ignore: cast_nullable_to_non_nullable
              as int,
      gameEndFlg: gameEndFlg == freezed
          ? _value.gameEndFlg
          : gameEndFlg // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CardCopyWith<$Res>? get monsterCardsPlacedOnTheFieldByPlayer0 {
    if (_value.monsterCardsPlacedOnTheFieldByPlayer0 == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_value.monsterCardsPlacedOnTheFieldByPlayer0!,
        (value) {
      return _then(
          _value.copyWith(monsterCardsPlacedOnTheFieldByPlayer0: value));
    });
  }

  @override
  $CardCopyWith<$Res>? get monsterCardsPlacedOnTheFieldByPlayer1 {
    if (_value.monsterCardsPlacedOnTheFieldByPlayer1 == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_value.monsterCardsPlacedOnTheFieldByPlayer1!,
        (value) {
      return _then(
          _value.copyWith(monsterCardsPlacedOnTheFieldByPlayer1: value));
    });
  }

  @override
  $CardCopyWith<$Res>? get equipmentCardsPlacedOnTheFieldByPlayer0 {
    if (_value.equipmentCardsPlacedOnTheFieldByPlayer0 == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_value.equipmentCardsPlacedOnTheFieldByPlayer0!,
        (value) {
      return _then(
          _value.copyWith(equipmentCardsPlacedOnTheFieldByPlayer0: value));
    });
  }

  @override
  $CardCopyWith<$Res>? get equipmentCardsPlacedOnTheFieldByPlayer1 {
    if (_value.equipmentCardsPlacedOnTheFieldByPlayer1 == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_value.equipmentCardsPlacedOnTheFieldByPlayer1!,
        (value) {
      return _then(
          _value.copyWith(equipmentCardsPlacedOnTheFieldByPlayer1: value));
    });
  }
}

/// @nodoc
abstract class _$DuelStateCopyWith<$Res> implements $DuelStateCopyWith<$Res> {
  factory _$DuelStateCopyWith(
          _DuelState value, $Res Function(_DuelState) then) =
      __$DuelStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int turn,
      int playerTurn,
      int phase,
      List<Card> player0Deck,
      List<Card> player1Deck,
      List<Card> handful0,
      List<Card> handful1,
      Card? monsterCardsPlacedOnTheFieldByPlayer0,
      Card? monsterCardsPlacedOnTheFieldByPlayer1,
      Card? equipmentCardsPlacedOnTheFieldByPlayer0,
      Card? equipmentCardsPlacedOnTheFieldByPlayer1,
      int battlesWonByPlayer0,
      int battlesWonByPlayer1,
      int winFlag,
      bool gameEndFlg});

  @override
  $CardCopyWith<$Res>? get monsterCardsPlacedOnTheFieldByPlayer0;
  @override
  $CardCopyWith<$Res>? get monsterCardsPlacedOnTheFieldByPlayer1;
  @override
  $CardCopyWith<$Res>? get equipmentCardsPlacedOnTheFieldByPlayer0;
  @override
  $CardCopyWith<$Res>? get equipmentCardsPlacedOnTheFieldByPlayer1;
}

/// @nodoc
class __$DuelStateCopyWithImpl<$Res> extends _$DuelStateCopyWithImpl<$Res>
    implements _$DuelStateCopyWith<$Res> {
  __$DuelStateCopyWithImpl(_DuelState _value, $Res Function(_DuelState) _then)
      : super(_value, (v) => _then(v as _DuelState));

  @override
  _DuelState get _value => super._value as _DuelState;

  @override
  $Res call({
    Object? turn = freezed,
    Object? playerTurn = freezed,
    Object? phase = freezed,
    Object? player0Deck = freezed,
    Object? player1Deck = freezed,
    Object? handful0 = freezed,
    Object? handful1 = freezed,
    Object? monsterCardsPlacedOnTheFieldByPlayer0 = freezed,
    Object? monsterCardsPlacedOnTheFieldByPlayer1 = freezed,
    Object? equipmentCardsPlacedOnTheFieldByPlayer0 = freezed,
    Object? equipmentCardsPlacedOnTheFieldByPlayer1 = freezed,
    Object? battlesWonByPlayer0 = freezed,
    Object? battlesWonByPlayer1 = freezed,
    Object? winFlag = freezed,
    Object? gameEndFlg = freezed,
  }) {
    return _then(_DuelState(
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as int,
      playerTurn: playerTurn == freezed
          ? _value.playerTurn
          : playerTurn // ignore: cast_nullable_to_non_nullable
              as int,
      phase: phase == freezed
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as int,
      player0Deck: player0Deck == freezed
          ? _value.player0Deck
          : player0Deck // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      player1Deck: player1Deck == freezed
          ? _value.player1Deck
          : player1Deck // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      handful0: handful0 == freezed
          ? _value.handful0
          : handful0 // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      handful1: handful1 == freezed
          ? _value.handful1
          : handful1 // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      monsterCardsPlacedOnTheFieldByPlayer0:
          monsterCardsPlacedOnTheFieldByPlayer0 == freezed
              ? _value.monsterCardsPlacedOnTheFieldByPlayer0
              : monsterCardsPlacedOnTheFieldByPlayer0 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      monsterCardsPlacedOnTheFieldByPlayer1:
          monsterCardsPlacedOnTheFieldByPlayer1 == freezed
              ? _value.monsterCardsPlacedOnTheFieldByPlayer1
              : monsterCardsPlacedOnTheFieldByPlayer1 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      equipmentCardsPlacedOnTheFieldByPlayer0:
          equipmentCardsPlacedOnTheFieldByPlayer0 == freezed
              ? _value.equipmentCardsPlacedOnTheFieldByPlayer0
              : equipmentCardsPlacedOnTheFieldByPlayer0 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      equipmentCardsPlacedOnTheFieldByPlayer1:
          equipmentCardsPlacedOnTheFieldByPlayer1 == freezed
              ? _value.equipmentCardsPlacedOnTheFieldByPlayer1
              : equipmentCardsPlacedOnTheFieldByPlayer1 // ignore: cast_nullable_to_non_nullable
                  as Card?,
      battlesWonByPlayer0: battlesWonByPlayer0 == freezed
          ? _value.battlesWonByPlayer0
          : battlesWonByPlayer0 // ignore: cast_nullable_to_non_nullable
              as int,
      battlesWonByPlayer1: battlesWonByPlayer1 == freezed
          ? _value.battlesWonByPlayer1
          : battlesWonByPlayer1 // ignore: cast_nullable_to_non_nullable
              as int,
      winFlag: winFlag == freezed
          ? _value.winFlag
          : winFlag // ignore: cast_nullable_to_non_nullable
              as int,
      gameEndFlg: gameEndFlg == freezed
          ? _value.gameEndFlg
          : gameEndFlg // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DuelState with DiagnosticableTreeMixin implements _DuelState {
  const _$_DuelState(
      {this.turn = 0,
      this.playerTurn = 0,
      this.phase = 0,
      this.player0Deck = const [],
      this.player1Deck = const [],
      this.handful0 = const [],
      this.handful1 = const [],
      this.monsterCardsPlacedOnTheFieldByPlayer0,
      this.monsterCardsPlacedOnTheFieldByPlayer1,
      this.equipmentCardsPlacedOnTheFieldByPlayer0,
      this.equipmentCardsPlacedOnTheFieldByPlayer1,
      this.battlesWonByPlayer0 = 0,
      this.battlesWonByPlayer1 = 0,
      this.winFlag = -1,
      this.gameEndFlg = false});

  factory _$_DuelState.fromJson(Map<String, dynamic> json) =>
      _$_$_DuelStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  /*
     * ターン
     */
  final int turn;
  @JsonKey(defaultValue: 0)
  @override
  /*
     * プレイヤーのターン
     */
  final int playerTurn;
  @JsonKey(defaultValue: 0)
  @override
  /*
     * フェイズ
     */
  final int phase;
  @JsonKey(defaultValue: const [])
  @override
  /*
     * デッキ
     */
  final List<Card> player0Deck;
  @JsonKey(defaultValue: const [])
  @override
  final List<Card> player1Deck;
  @JsonKey(defaultValue: const [])
  @override
  /*
     * 手札
     */
  final List<Card> handful0;
  @JsonKey(defaultValue: const [])
  @override
  final List<Card> handful1;
  @override
  /*
     * フィールドに設置した、モンスターカード
     */
  final Card? monsterCardsPlacedOnTheFieldByPlayer0;
  @override
  final Card? monsterCardsPlacedOnTheFieldByPlayer1;
  @override
  /*
     * フィールドに設置した、装備カード
     */
  final Card? equipmentCardsPlacedOnTheFieldByPlayer0;
  @override
  final Card? equipmentCardsPlacedOnTheFieldByPlayer1;
  @JsonKey(defaultValue: 0)
  @override
  /*
     * バトル勝利回数
     */
  final int battlesWonByPlayer0;
  @JsonKey(defaultValue: 0)
  @override
  final int battlesWonByPlayer1;
  @JsonKey(defaultValue: -1)
  @override
  /*
     * どっちが勝利したかのフラグ
     */
  final int winFlag;
  @JsonKey(defaultValue: false)
  @override
  /*
     * ゲームエンド
     */
  final bool gameEndFlg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DuelState(turn: $turn, playerTurn: $playerTurn, phase: $phase, player0Deck: $player0Deck, player1Deck: $player1Deck, handful0: $handful0, handful1: $handful1, monsterCardsPlacedOnTheFieldByPlayer0: $monsterCardsPlacedOnTheFieldByPlayer0, monsterCardsPlacedOnTheFieldByPlayer1: $monsterCardsPlacedOnTheFieldByPlayer1, equipmentCardsPlacedOnTheFieldByPlayer0: $equipmentCardsPlacedOnTheFieldByPlayer0, equipmentCardsPlacedOnTheFieldByPlayer1: $equipmentCardsPlacedOnTheFieldByPlayer1, battlesWonByPlayer0: $battlesWonByPlayer0, battlesWonByPlayer1: $battlesWonByPlayer1, winFlag: $winFlag, gameEndFlg: $gameEndFlg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DuelState'))
      ..add(DiagnosticsProperty('turn', turn))
      ..add(DiagnosticsProperty('playerTurn', playerTurn))
      ..add(DiagnosticsProperty('phase', phase))
      ..add(DiagnosticsProperty('player0Deck', player0Deck))
      ..add(DiagnosticsProperty('player1Deck', player1Deck))
      ..add(DiagnosticsProperty('handful0', handful0))
      ..add(DiagnosticsProperty('handful1', handful1))
      ..add(DiagnosticsProperty('monsterCardsPlacedOnTheFieldByPlayer0',
          monsterCardsPlacedOnTheFieldByPlayer0))
      ..add(DiagnosticsProperty('monsterCardsPlacedOnTheFieldByPlayer1',
          monsterCardsPlacedOnTheFieldByPlayer1))
      ..add(DiagnosticsProperty('equipmentCardsPlacedOnTheFieldByPlayer0',
          equipmentCardsPlacedOnTheFieldByPlayer0))
      ..add(DiagnosticsProperty('equipmentCardsPlacedOnTheFieldByPlayer1',
          equipmentCardsPlacedOnTheFieldByPlayer1))
      ..add(DiagnosticsProperty('battlesWonByPlayer0', battlesWonByPlayer0))
      ..add(DiagnosticsProperty('battlesWonByPlayer1', battlesWonByPlayer1))
      ..add(DiagnosticsProperty('winFlag', winFlag))
      ..add(DiagnosticsProperty('gameEndFlg', gameEndFlg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DuelState &&
            (identical(other.turn, turn) ||
                const DeepCollectionEquality().equals(other.turn, turn)) &&
            (identical(other.playerTurn, playerTurn) ||
                const DeepCollectionEquality()
                    .equals(other.playerTurn, playerTurn)) &&
            (identical(other.phase, phase) ||
                const DeepCollectionEquality().equals(other.phase, phase)) &&
            (identical(other.player0Deck, player0Deck) ||
                const DeepCollectionEquality()
                    .equals(other.player0Deck, player0Deck)) &&
            (identical(other.player1Deck, player1Deck) ||
                const DeepCollectionEquality()
                    .equals(other.player1Deck, player1Deck)) &&
            (identical(other.handful0, handful0) ||
                const DeepCollectionEquality()
                    .equals(other.handful0, handful0)) &&
            (identical(other.handful1, handful1) ||
                const DeepCollectionEquality()
                    .equals(other.handful1, handful1)) &&
            (identical(other.monsterCardsPlacedOnTheFieldByPlayer0, monsterCardsPlacedOnTheFieldByPlayer0) ||
                const DeepCollectionEquality().equals(
                    other.monsterCardsPlacedOnTheFieldByPlayer0,
                    monsterCardsPlacedOnTheFieldByPlayer0)) &&
            (identical(other.monsterCardsPlacedOnTheFieldByPlayer1, monsterCardsPlacedOnTheFieldByPlayer1) ||
                const DeepCollectionEquality().equals(
                    other.monsterCardsPlacedOnTheFieldByPlayer1,
                    monsterCardsPlacedOnTheFieldByPlayer1)) &&
            (identical(other.equipmentCardsPlacedOnTheFieldByPlayer0, equipmentCardsPlacedOnTheFieldByPlayer0) ||
                const DeepCollectionEquality().equals(
                    other.equipmentCardsPlacedOnTheFieldByPlayer0,
                    equipmentCardsPlacedOnTheFieldByPlayer0)) &&
            (identical(other.equipmentCardsPlacedOnTheFieldByPlayer1, equipmentCardsPlacedOnTheFieldByPlayer1) ||
                const DeepCollectionEquality().equals(
                    other.equipmentCardsPlacedOnTheFieldByPlayer1,
                    equipmentCardsPlacedOnTheFieldByPlayer1)) &&
            (identical(other.battlesWonByPlayer0, battlesWonByPlayer0) ||
                const DeepCollectionEquality()
                    .equals(other.battlesWonByPlayer0, battlesWonByPlayer0)) &&
            (identical(other.battlesWonByPlayer1, battlesWonByPlayer1) ||
                const DeepCollectionEquality()
                    .equals(other.battlesWonByPlayer1, battlesWonByPlayer1)) &&
            (identical(other.winFlag, winFlag) ||
                const DeepCollectionEquality()
                    .equals(other.winFlag, winFlag)) &&
            (identical(other.gameEndFlg, gameEndFlg) ||
                const DeepCollectionEquality()
                    .equals(other.gameEndFlg, gameEndFlg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(turn) ^
      const DeepCollectionEquality().hash(playerTurn) ^
      const DeepCollectionEquality().hash(phase) ^
      const DeepCollectionEquality().hash(player0Deck) ^
      const DeepCollectionEquality().hash(player1Deck) ^
      const DeepCollectionEquality().hash(handful0) ^
      const DeepCollectionEquality().hash(handful1) ^
      const DeepCollectionEquality()
          .hash(monsterCardsPlacedOnTheFieldByPlayer0) ^
      const DeepCollectionEquality()
          .hash(monsterCardsPlacedOnTheFieldByPlayer1) ^
      const DeepCollectionEquality()
          .hash(equipmentCardsPlacedOnTheFieldByPlayer0) ^
      const DeepCollectionEquality()
          .hash(equipmentCardsPlacedOnTheFieldByPlayer1) ^
      const DeepCollectionEquality().hash(battlesWonByPlayer0) ^
      const DeepCollectionEquality().hash(battlesWonByPlayer1) ^
      const DeepCollectionEquality().hash(winFlag) ^
      const DeepCollectionEquality().hash(gameEndFlg);

  @JsonKey(ignore: true)
  @override
  _$DuelStateCopyWith<_DuelState> get copyWith =>
      __$DuelStateCopyWithImpl<_DuelState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DuelStateToJson(this);
  }
}

abstract class _DuelState implements DuelState {
  const factory _DuelState(
      {int turn,
      int playerTurn,
      int phase,
      List<Card> player0Deck,
      List<Card> player1Deck,
      List<Card> handful0,
      List<Card> handful1,
      Card? monsterCardsPlacedOnTheFieldByPlayer0,
      Card? monsterCardsPlacedOnTheFieldByPlayer1,
      Card? equipmentCardsPlacedOnTheFieldByPlayer0,
      Card? equipmentCardsPlacedOnTheFieldByPlayer1,
      int battlesWonByPlayer0,
      int battlesWonByPlayer1,
      int winFlag,
      bool gameEndFlg}) = _$_DuelState;

  factory _DuelState.fromJson(Map<String, dynamic> json) =
      _$_DuelState.fromJson;

  @override
  /*
     * ターン
     */
  int get turn => throw _privateConstructorUsedError;
  @override
  /*
     * プレイヤーのターン
     */
  int get playerTurn => throw _privateConstructorUsedError;
  @override
  /*
     * フェイズ
     */
  int get phase => throw _privateConstructorUsedError;
  @override
  /*
     * デッキ
     */
  List<Card> get player0Deck => throw _privateConstructorUsedError;
  @override
  List<Card> get player1Deck => throw _privateConstructorUsedError;
  @override
  /*
     * 手札
     */
  List<Card> get handful0 => throw _privateConstructorUsedError;
  @override
  List<Card> get handful1 => throw _privateConstructorUsedError;
  @override
  /*
     * フィールドに設置した、モンスターカード
     */
  Card? get monsterCardsPlacedOnTheFieldByPlayer0 =>
      throw _privateConstructorUsedError;
  @override
  Card? get monsterCardsPlacedOnTheFieldByPlayer1 =>
      throw _privateConstructorUsedError;
  @override
  /*
     * フィールドに設置した、装備カード
     */
  Card? get equipmentCardsPlacedOnTheFieldByPlayer0 =>
      throw _privateConstructorUsedError;
  @override
  Card? get equipmentCardsPlacedOnTheFieldByPlayer1 =>
      throw _privateConstructorUsedError;
  @override
  /*
     * バトル勝利回数
     */
  int get battlesWonByPlayer0 => throw _privateConstructorUsedError;
  @override
  int get battlesWonByPlayer1 => throw _privateConstructorUsedError;
  @override
  /*
     * どっちが勝利したかのフラグ
     */
  int get winFlag => throw _privateConstructorUsedError;
  @override
  /*
     * ゲームエンド
     */
  bool get gameEndFlg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DuelStateCopyWith<_DuelState> get copyWith =>
      throw _privateConstructorUsedError;
}
