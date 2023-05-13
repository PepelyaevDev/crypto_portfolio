// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_coin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketCoinEvent {
  String get coinId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coinId) getCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String coinId)? getCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coinId)? getCoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoin value) getCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoin value)? getCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoin value)? getCoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketCoinEventCopyWith<MarketCoinEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketCoinEventCopyWith<$Res> {
  factory $MarketCoinEventCopyWith(MarketCoinEvent value, $Res Function(MarketCoinEvent) then) =
      _$MarketCoinEventCopyWithImpl<$Res, MarketCoinEvent>;
  @useResult
  $Res call({String coinId});
}

/// @nodoc
class _$MarketCoinEventCopyWithImpl<$Res, $Val extends MarketCoinEvent>
    implements $MarketCoinEventCopyWith<$Res> {
  _$MarketCoinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
  }) {
    return _then(_value.copyWith(
      coinId: null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCoinCopyWith<$Res> implements $MarketCoinEventCopyWith<$Res> {
  factory _$$_GetCoinCopyWith(_$_GetCoin value, $Res Function(_$_GetCoin) then) =
      __$$_GetCoinCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String coinId});
}

/// @nodoc
class __$$_GetCoinCopyWithImpl<$Res> extends _$MarketCoinEventCopyWithImpl<$Res, _$_GetCoin>
    implements _$$_GetCoinCopyWith<$Res> {
  __$$_GetCoinCopyWithImpl(_$_GetCoin _value, $Res Function(_$_GetCoin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
  }) {
    return _then(_$_GetCoin(
      null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCoin implements _GetCoin {
  const _$_GetCoin(this.coinId);

  @override
  final String coinId;

  @override
  String toString() {
    return 'MarketCoinEvent.getCoin(coinId: $coinId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCoin &&
            (identical(other.coinId, coinId) || other.coinId == coinId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coinId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCoinCopyWith<_$_GetCoin> get copyWith =>
      __$$_GetCoinCopyWithImpl<_$_GetCoin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coinId) getCoin,
  }) {
    return getCoin(coinId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String coinId)? getCoin,
  }) {
    return getCoin?.call(coinId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coinId)? getCoin,
    required TResult orElse(),
  }) {
    if (getCoin != null) {
      return getCoin(coinId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoin value) getCoin,
  }) {
    return getCoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoin value)? getCoin,
  }) {
    return getCoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoin value)? getCoin,
    required TResult orElse(),
  }) {
    if (getCoin != null) {
      return getCoin(this);
    }
    return orElse();
  }
}

abstract class _GetCoin implements MarketCoinEvent {
  const factory _GetCoin(final String coinId) = _$_GetCoin;

  @override
  String get coinId;
  @override
  @JsonKey(ignore: true)
  _$$_GetCoinCopyWith<_$_GetCoin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketCoinState {
  CoinEntity? get coin => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketCoinStateCopyWith<MarketCoinState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketCoinStateCopyWith<$Res> {
  factory $MarketCoinStateCopyWith(MarketCoinState value, $Res Function(MarketCoinState) then) =
      _$MarketCoinStateCopyWithImpl<$Res, MarketCoinState>;
  @useResult
  $Res call({CoinEntity? coin, bool loading, Failure? error});

  $CoinEntityCopyWith<$Res>? get coin;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$MarketCoinStateCopyWithImpl<$Res, $Val extends MarketCoinState>
    implements $MarketCoinStateCopyWith<$Res> {
  _$MarketCoinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CoinEntity?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinEntityCopyWith<$Res>? get coin {
    if (_value.coin == null) {
      return null;
    }

    return $CoinEntityCopyWith<$Res>(_value.coin!, (value) {
      return _then(_value.copyWith(coin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarketCoinStateCopyWith<$Res> implements $MarketCoinStateCopyWith<$Res> {
  factory _$$_MarketCoinStateCopyWith(
          _$_MarketCoinState value, $Res Function(_$_MarketCoinState) then) =
      __$$_MarketCoinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinEntity? coin, bool loading, Failure? error});

  @override
  $CoinEntityCopyWith<$Res>? get coin;
  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_MarketCoinStateCopyWithImpl<$Res>
    extends _$MarketCoinStateCopyWithImpl<$Res, _$_MarketCoinState>
    implements _$$_MarketCoinStateCopyWith<$Res> {
  __$$_MarketCoinStateCopyWithImpl(
      _$_MarketCoinState _value, $Res Function(_$_MarketCoinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_MarketCoinState(
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CoinEntity?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_MarketCoinState implements _MarketCoinState {
  const _$_MarketCoinState({this.coin, this.loading = false, this.error});

  @override
  final CoinEntity? coin;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'MarketCoinState(coin: $coin, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketCoinState &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coin, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketCoinStateCopyWith<_$_MarketCoinState> get copyWith =>
      __$$_MarketCoinStateCopyWithImpl<_$_MarketCoinState>(this, _$identity);
}

abstract class _MarketCoinState implements MarketCoinState {
  const factory _MarketCoinState(
      {final CoinEntity? coin, final bool loading, final Failure? error}) = _$_MarketCoinState;

  @override
  CoinEntity? get coin;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_MarketCoinStateCopyWith<_$_MarketCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
