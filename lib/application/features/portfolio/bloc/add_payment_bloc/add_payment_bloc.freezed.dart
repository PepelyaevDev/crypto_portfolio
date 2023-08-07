// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? symbol) getCoin,
    required TResult Function() clear,
    required TResult Function(CoinEntity coin, PaymentEntity paymentEntity)
        updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? symbol)? getCoin,
    TResult? Function()? clear,
    TResult? Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? symbol)? getCoin,
    TResult Function()? clear,
    TResult Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoin value) getCoin,
    required TResult Function(_Clear value) clear,
    required TResult Function(_UpdateHistory value) updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoin value)? getCoin,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoin value)? getCoin,
    TResult Function(_Clear value)? clear,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPaymentEventCopyWith<$Res> {
  factory $AddPaymentEventCopyWith(
          AddPaymentEvent value, $Res Function(AddPaymentEvent) then) =
      _$AddPaymentEventCopyWithImpl<$Res, AddPaymentEvent>;
}

/// @nodoc
class _$AddPaymentEventCopyWithImpl<$Res, $Val extends AddPaymentEvent>
    implements $AddPaymentEventCopyWith<$Res> {
  _$AddPaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCoinCopyWith<$Res> {
  factory _$$_GetCoinCopyWith(
          _$_GetCoin value, $Res Function(_$_GetCoin) then) =
      __$$_GetCoinCopyWithImpl<$Res>;
  @useResult
  $Res call({String? symbol});
}

/// @nodoc
class __$$_GetCoinCopyWithImpl<$Res>
    extends _$AddPaymentEventCopyWithImpl<$Res, _$_GetCoin>
    implements _$$_GetCoinCopyWith<$Res> {
  __$$_GetCoinCopyWithImpl(_$_GetCoin _value, $Res Function(_$_GetCoin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = freezed,
  }) {
    return _then(_$_GetCoin(
      freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetCoin implements _GetCoin {
  const _$_GetCoin(this.symbol);

  @override
  final String? symbol;

  @override
  String toString() {
    return 'AddPaymentEvent.getCoin(symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCoin &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCoinCopyWith<_$_GetCoin> get copyWith =>
      __$$_GetCoinCopyWithImpl<_$_GetCoin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? symbol) getCoin,
    required TResult Function() clear,
    required TResult Function(CoinEntity coin, PaymentEntity paymentEntity)
        updateHistory,
  }) {
    return getCoin(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? symbol)? getCoin,
    TResult? Function()? clear,
    TResult? Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
  }) {
    return getCoin?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? symbol)? getCoin,
    TResult Function()? clear,
    TResult Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
    required TResult orElse(),
  }) {
    if (getCoin != null) {
      return getCoin(symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoin value) getCoin,
    required TResult Function(_Clear value) clear,
    required TResult Function(_UpdateHistory value) updateHistory,
  }) {
    return getCoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoin value)? getCoin,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) {
    return getCoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoin value)? getCoin,
    TResult Function(_Clear value)? clear,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) {
    if (getCoin != null) {
      return getCoin(this);
    }
    return orElse();
  }
}

abstract class _GetCoin implements AddPaymentEvent {
  const factory _GetCoin(final String? symbol) = _$_GetCoin;

  String? get symbol;
  @JsonKey(ignore: true)
  _$$_GetCoinCopyWith<_$_GetCoin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearCopyWith<$Res> {
  factory _$$_ClearCopyWith(_$_Clear value, $Res Function(_$_Clear) then) =
      __$$_ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearCopyWithImpl<$Res>
    extends _$AddPaymentEventCopyWithImpl<$Res, _$_Clear>
    implements _$$_ClearCopyWith<$Res> {
  __$$_ClearCopyWithImpl(_$_Clear _value, $Res Function(_$_Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Clear implements _Clear {
  const _$_Clear();

  @override
  String toString() {
    return 'AddPaymentEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? symbol) getCoin,
    required TResult Function() clear,
    required TResult Function(CoinEntity coin, PaymentEntity paymentEntity)
        updateHistory,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? symbol)? getCoin,
    TResult? Function()? clear,
    TResult? Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? symbol)? getCoin,
    TResult Function()? clear,
    TResult Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoin value) getCoin,
    required TResult Function(_Clear value) clear,
    required TResult Function(_UpdateHistory value) updateHistory,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoin value)? getCoin,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoin value)? getCoin,
    TResult Function(_Clear value)? clear,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements AddPaymentEvent {
  const factory _Clear() = _$_Clear;
}

/// @nodoc
abstract class _$$_UpdateHistoryCopyWith<$Res> {
  factory _$$_UpdateHistoryCopyWith(
          _$_UpdateHistory value, $Res Function(_$_UpdateHistory) then) =
      __$$_UpdateHistoryCopyWithImpl<$Res>;
  @useResult
  $Res call({CoinEntity coin, PaymentEntity paymentEntity});

  $CoinEntityCopyWith<$Res> get coin;
  $PaymentEntityCopyWith<$Res> get paymentEntity;
}

/// @nodoc
class __$$_UpdateHistoryCopyWithImpl<$Res>
    extends _$AddPaymentEventCopyWithImpl<$Res, _$_UpdateHistory>
    implements _$$_UpdateHistoryCopyWith<$Res> {
  __$$_UpdateHistoryCopyWithImpl(
      _$_UpdateHistory _value, $Res Function(_$_UpdateHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
    Object? paymentEntity = null,
  }) {
    return _then(_$_UpdateHistory(
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CoinEntity,
      paymentEntity: null == paymentEntity
          ? _value.paymentEntity
          : paymentEntity // ignore: cast_nullable_to_non_nullable
              as PaymentEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinEntityCopyWith<$Res> get coin {
    return $CoinEntityCopyWith<$Res>(_value.coin, (value) {
      return _then(_value.copyWith(coin: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentEntityCopyWith<$Res> get paymentEntity {
    return $PaymentEntityCopyWith<$Res>(_value.paymentEntity, (value) {
      return _then(_value.copyWith(paymentEntity: value));
    });
  }
}

/// @nodoc

class _$_UpdateHistory implements _UpdateHistory {
  const _$_UpdateHistory({required this.coin, required this.paymentEntity});

  @override
  final CoinEntity coin;
  @override
  final PaymentEntity paymentEntity;

  @override
  String toString() {
    return 'AddPaymentEvent.updateHistory(coin: $coin, paymentEntity: $paymentEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateHistory &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.paymentEntity, paymentEntity) ||
                other.paymentEntity == paymentEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coin, paymentEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateHistoryCopyWith<_$_UpdateHistory> get copyWith =>
      __$$_UpdateHistoryCopyWithImpl<_$_UpdateHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? symbol) getCoin,
    required TResult Function() clear,
    required TResult Function(CoinEntity coin, PaymentEntity paymentEntity)
        updateHistory,
  }) {
    return updateHistory(coin, paymentEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? symbol)? getCoin,
    TResult? Function()? clear,
    TResult? Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
  }) {
    return updateHistory?.call(coin, paymentEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? symbol)? getCoin,
    TResult Function()? clear,
    TResult Function(CoinEntity coin, PaymentEntity paymentEntity)?
        updateHistory,
    required TResult orElse(),
  }) {
    if (updateHistory != null) {
      return updateHistory(coin, paymentEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoin value) getCoin,
    required TResult Function(_Clear value) clear,
    required TResult Function(_UpdateHistory value) updateHistory,
  }) {
    return updateHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoin value)? getCoin,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) {
    return updateHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoin value)? getCoin,
    TResult Function(_Clear value)? clear,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) {
    if (updateHistory != null) {
      return updateHistory(this);
    }
    return orElse();
  }
}

abstract class _UpdateHistory implements AddPaymentEvent {
  const factory _UpdateHistory(
      {required final CoinEntity coin,
      required final PaymentEntity paymentEntity}) = _$_UpdateHistory;

  CoinEntity get coin;
  PaymentEntity get paymentEntity;
  @JsonKey(ignore: true)
  _$$_UpdateHistoryCopyWith<_$_UpdateHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoinEntity coin) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoinEntity coin)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoinEntity coin)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPaymentStateCopyWith<$Res> {
  factory $AddPaymentStateCopyWith(
          AddPaymentState value, $Res Function(AddPaymentState) then) =
      _$AddPaymentStateCopyWithImpl<$Res, AddPaymentState>;
}

/// @nodoc
class _$AddPaymentStateCopyWithImpl<$Res, $Val extends AddPaymentState>
    implements $AddPaymentStateCopyWith<$Res> {
  _$AddPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddPaymentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AddPaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoinEntity coin) success,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoinEntity coin)? success,
    TResult? Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoinEntity coin)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddPaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AddPaymentStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AddPaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoinEntity coin) success,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoinEntity coin)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoinEntity coin)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddPaymentState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CoinEntity coin});

  $CoinEntityCopyWith<$Res> get coin;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$AddPaymentStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
  }) {
    return _then(_$_Success(
      null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as CoinEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinEntityCopyWith<$Res> get coin {
    return $CoinEntityCopyWith<$Res>(_value.coin, (value) {
      return _then(_value.copyWith(coin: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.coin);

  @override
  final CoinEntity coin;

  @override
  String toString() {
    return 'AddPaymentState.success(coin: $coin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoinEntity coin) success,
    required TResult Function(Failure error) error,
  }) {
    return success(coin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoinEntity coin)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(coin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoinEntity coin)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(coin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddPaymentState {
  const factory _Success(final CoinEntity coin) = _$_Success;

  CoinEntity get coin;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AddPaymentStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'AddPaymentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CoinEntity coin) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CoinEntity coin)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CoinEntity coin)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddPaymentState {
  const factory _Error(final Failure error) = _$_Error;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
