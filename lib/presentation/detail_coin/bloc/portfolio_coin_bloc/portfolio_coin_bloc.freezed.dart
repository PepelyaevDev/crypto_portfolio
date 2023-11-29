// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_coin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioCoinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function(Completer<void>? completer) refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinId id) deleteCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinId id)? deleteCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinId id)? deleteCoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_DeleteCoin value) deleteCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_DeleteCoin value)? deleteCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_DeleteCoin value)? deleteCoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCoinEventCopyWith<$Res> {
  factory $PortfolioCoinEventCopyWith(
          PortfolioCoinEvent value, $Res Function(PortfolioCoinEvent) then) =
      _$PortfolioCoinEventCopyWithImpl<$Res, PortfolioCoinEvent>;
}

/// @nodoc
class _$PortfolioCoinEventCopyWithImpl<$Res, $Val extends PortfolioCoinEvent>
    implements $PortfolioCoinEventCopyWith<$Res> {
  _$PortfolioCoinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, CoinsEntity> data});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$PortfolioCoinEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Update(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<Failure, CoinsEntity>,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.data);

  @override
  final Either<Failure, CoinsEntity> data;

  @override
  String toString() {
    return 'PortfolioCoinEvent.update(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function(Completer<void>? completer) refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinId id) deleteCoin,
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinId id)? deleteCoin,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinId id)? deleteCoin,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_DeleteCoin value) deleteCoin,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_DeleteCoin value)? deleteCoin,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_DeleteCoin value)? deleteCoin,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PortfolioCoinEvent {
  const factory _Update(final Either<Failure, CoinsEntity> data) = _$_Update;

  Either<Failure, CoinsEntity> get data;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(_$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Completer<void>? completer});
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res>
    extends _$PortfolioCoinEventCopyWithImpl<$Res, _$_RefreshData>
    implements _$$_RefreshDataCopyWith<$Res> {
  __$$_RefreshDataCopyWithImpl(_$_RefreshData _value, $Res Function(_$_RefreshData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = freezed,
  }) {
    return _then(_$_RefreshData(
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>?,
    ));
  }
}

/// @nodoc

class _$_RefreshData implements _RefreshData {
  const _$_RefreshData({this.completer});

  @override
  final Completer<void>? completer;

  @override
  String toString() {
    return 'PortfolioCoinEvent.refreshData(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshData &&
            (identical(other.completer, completer) || other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshDataCopyWith<_$_RefreshData> get copyWith =>
      __$$_RefreshDataCopyWithImpl<_$_RefreshData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function(Completer<void>? completer) refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinId id) deleteCoin,
  }) {
    return refreshData(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinId id)? deleteCoin,
  }) {
    return refreshData?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinId id)? deleteCoin,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_DeleteCoin value) deleteCoin,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_DeleteCoin value)? deleteCoin,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_DeleteCoin value)? deleteCoin,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements PortfolioCoinEvent {
  const factory _RefreshData({final Completer<void>? completer}) = _$_RefreshData;

  Completer<void>? get completer;
  @JsonKey(ignore: true)
  _$$_RefreshDataCopyWith<_$_RefreshData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePaymentCopyWith<$Res> {
  factory _$$_DeletePaymentCopyWith(_$_DeletePayment value, $Res Function(_$_DeletePayment) then) =
      __$$_DeletePaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentEntity payment});

  $PaymentEntityCopyWith<$Res> get payment;
}

/// @nodoc
class __$$_DeletePaymentCopyWithImpl<$Res>
    extends _$PortfolioCoinEventCopyWithImpl<$Res, _$_DeletePayment>
    implements _$$_DeletePaymentCopyWith<$Res> {
  __$$_DeletePaymentCopyWithImpl(_$_DeletePayment _value, $Res Function(_$_DeletePayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$_DeletePayment(
      null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentEntityCopyWith<$Res> get payment {
    return $PaymentEntityCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$_DeletePayment implements _DeletePayment {
  const _$_DeletePayment(this.payment);

  @override
  final PaymentEntity payment;

  @override
  String toString() {
    return 'PortfolioCoinEvent.deletePayment(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePayment &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePaymentCopyWith<_$_DeletePayment> get copyWith =>
      __$$_DeletePaymentCopyWithImpl<_$_DeletePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function(Completer<void>? completer) refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinId id) deleteCoin,
  }) {
    return deletePayment(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinId id)? deleteCoin,
  }) {
    return deletePayment?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinId id)? deleteCoin,
    required TResult orElse(),
  }) {
    if (deletePayment != null) {
      return deletePayment(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_DeleteCoin value) deleteCoin,
  }) {
    return deletePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_DeleteCoin value)? deleteCoin,
  }) {
    return deletePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_DeleteCoin value)? deleteCoin,
    required TResult orElse(),
  }) {
    if (deletePayment != null) {
      return deletePayment(this);
    }
    return orElse();
  }
}

abstract class _DeletePayment implements PortfolioCoinEvent {
  const factory _DeletePayment(final PaymentEntity payment) = _$_DeletePayment;

  PaymentEntity get payment;
  @JsonKey(ignore: true)
  _$$_DeletePaymentCopyWith<_$_DeletePayment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCoinCopyWith<$Res> {
  factory _$$_DeleteCoinCopyWith(_$_DeleteCoin value, $Res Function(_$_DeleteCoin) then) =
      __$$_DeleteCoinCopyWithImpl<$Res>;
  @useResult
  $Res call({CoinId id});

  $CoinIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_DeleteCoinCopyWithImpl<$Res>
    extends _$PortfolioCoinEventCopyWithImpl<$Res, _$_DeleteCoin>
    implements _$$_DeleteCoinCopyWith<$Res> {
  __$$_DeleteCoinCopyWithImpl(_$_DeleteCoin _value, $Res Function(_$_DeleteCoin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteCoin(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CoinId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinIdCopyWith<$Res> get id {
    return $CoinIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc

class _$_DeleteCoin implements _DeleteCoin {
  const _$_DeleteCoin(this.id);

  @override
  final CoinId id;

  @override
  String toString() {
    return 'PortfolioCoinEvent.deleteCoin(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCoin &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCoinCopyWith<_$_DeleteCoin> get copyWith =>
      __$$_DeleteCoinCopyWithImpl<_$_DeleteCoin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function(Completer<void>? completer) refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinId id) deleteCoin,
  }) {
    return deleteCoin(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinId id)? deleteCoin,
  }) {
    return deleteCoin?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinId id)? deleteCoin,
    required TResult orElse(),
  }) {
    if (deleteCoin != null) {
      return deleteCoin(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_DeleteCoin value) deleteCoin,
  }) {
    return deleteCoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_DeleteCoin value)? deleteCoin,
  }) {
    return deleteCoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_DeleteCoin value)? deleteCoin,
    required TResult orElse(),
  }) {
    if (deleteCoin != null) {
      return deleteCoin(this);
    }
    return orElse();
  }
}

abstract class _DeleteCoin implements PortfolioCoinEvent {
  const factory _DeleteCoin(final CoinId id) = _$_DeleteCoin;

  CoinId get id;
  @JsonKey(ignore: true)
  _$$_DeleteCoinCopyWith<_$_DeleteCoin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PortfolioCoinState {
  CoinEntity? get coin => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioCoinStateCopyWith<PortfolioCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioCoinStateCopyWith<$Res> {
  factory $PortfolioCoinStateCopyWith(
          PortfolioCoinState value, $Res Function(PortfolioCoinState) then) =
      _$PortfolioCoinStateCopyWithImpl<$Res, PortfolioCoinState>;
  @useResult
  $Res call({CoinEntity? coin, bool loading, Failure? error});

  $CoinEntityCopyWith<$Res>? get coin;
}

/// @nodoc
class _$PortfolioCoinStateCopyWithImpl<$Res, $Val extends PortfolioCoinState>
    implements $PortfolioCoinStateCopyWith<$Res> {
  _$PortfolioCoinStateCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
abstract class _$$_PortfolioCoinStateCopyWith<$Res> implements $PortfolioCoinStateCopyWith<$Res> {
  factory _$$_PortfolioCoinStateCopyWith(
          _$_PortfolioCoinState value, $Res Function(_$_PortfolioCoinState) then) =
      __$$_PortfolioCoinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinEntity? coin, bool loading, Failure? error});

  @override
  $CoinEntityCopyWith<$Res>? get coin;
}

/// @nodoc
class __$$_PortfolioCoinStateCopyWithImpl<$Res>
    extends _$PortfolioCoinStateCopyWithImpl<$Res, _$_PortfolioCoinState>
    implements _$$_PortfolioCoinStateCopyWith<$Res> {
  __$$_PortfolioCoinStateCopyWithImpl(
      _$_PortfolioCoinState _value, $Res Function(_$_PortfolioCoinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_PortfolioCoinState(
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

class _$_PortfolioCoinState implements _PortfolioCoinState {
  const _$_PortfolioCoinState({required this.coin, this.loading = false, this.error});

  @override
  final CoinEntity? coin;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'PortfolioCoinState(coin: $coin, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioCoinState &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coin, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioCoinStateCopyWith<_$_PortfolioCoinState> get copyWith =>
      __$$_PortfolioCoinStateCopyWithImpl<_$_PortfolioCoinState>(this, _$identity);
}

abstract class _PortfolioCoinState implements PortfolioCoinState {
  const factory _PortfolioCoinState(
      {required final CoinEntity? coin,
      final bool loading,
      final Failure? error}) = _$_PortfolioCoinState;

  @override
  CoinEntity? get coin;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioCoinStateCopyWith<_$_PortfolioCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
