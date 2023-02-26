// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_coins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketCoinsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketCoinsEventCopyWith<$Res> {
  factory $MarketCoinsEventCopyWith(
          MarketCoinsEvent value, $Res Function(MarketCoinsEvent) then) =
      _$MarketCoinsEventCopyWithImpl<$Res, MarketCoinsEvent>;
}

/// @nodoc
class _$MarketCoinsEventCopyWithImpl<$Res, $Val extends MarketCoinsEvent>
    implements $MarketCoinsEventCopyWith<$Res> {
  _$MarketCoinsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(
          _$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res>
    extends _$MarketCoinsEventCopyWithImpl<$Res, _$_RefreshData>
    implements _$$_RefreshDataCopyWith<$Res> {
  __$$_RefreshDataCopyWithImpl(
      _$_RefreshData _value, $Res Function(_$_RefreshData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshData implements _RefreshData {
  const _$_RefreshData();

  @override
  String toString() {
    return 'MarketCoinsEvent.refreshData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements MarketCoinsEvent {
  const factory _RefreshData() = _$_RefreshData;
}

/// @nodoc
mixin _$MarketCoinsState {
  CoinsEntity get coins => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketCoinsStateCopyWith<MarketCoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketCoinsStateCopyWith<$Res> {
  factory $MarketCoinsStateCopyWith(
          MarketCoinsState value, $Res Function(MarketCoinsState) then) =
      _$MarketCoinsStateCopyWithImpl<$Res, MarketCoinsState>;
  @useResult
  $Res call({CoinsEntity coins, String? error});

  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class _$MarketCoinsStateCopyWithImpl<$Res, $Val extends MarketCoinsState>
    implements $MarketCoinsStateCopyWith<$Res> {
  _$MarketCoinsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinsEntityCopyWith<$Res> get coins {
    return $CoinsEntityCopyWith<$Res>(_value.coins, (value) {
      return _then(_value.copyWith(coins: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarketCoinsStateCopyWith<$Res>
    implements $MarketCoinsStateCopyWith<$Res> {
  factory _$$_MarketCoinsStateCopyWith(
          _$_MarketCoinsState value, $Res Function(_$_MarketCoinsState) then) =
      __$$_MarketCoinsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinsEntity coins, String? error});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_MarketCoinsStateCopyWithImpl<$Res>
    extends _$MarketCoinsStateCopyWithImpl<$Res, _$_MarketCoinsState>
    implements _$$_MarketCoinsStateCopyWith<$Res> {
  __$$_MarketCoinsStateCopyWithImpl(
      _$_MarketCoinsState _value, $Res Function(_$_MarketCoinsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? error = freezed,
  }) {
    return _then(_$_MarketCoinsState(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MarketCoinsState implements _MarketCoinsState {
  const _$_MarketCoinsState({required this.coins, this.error});

  @override
  final CoinsEntity coins;
  @override
  final String? error;

  @override
  String toString() {
    return 'MarketCoinsState(coins: $coins, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketCoinsState &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketCoinsStateCopyWith<_$_MarketCoinsState> get copyWith =>
      __$$_MarketCoinsStateCopyWithImpl<_$_MarketCoinsState>(this, _$identity);
}

abstract class _MarketCoinsState implements MarketCoinsState {
  const factory _MarketCoinsState(
      {required final CoinsEntity coins,
      final String? error}) = _$_MarketCoinsState;

  @override
  CoinsEntity get coins;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_MarketCoinsStateCopyWith<_$_MarketCoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}
