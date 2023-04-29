// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_portfolio_coin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailPortfolioCoinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(String coinId) deleteCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(String coinId)? deleteCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(String coinId)? deleteCoin,
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
abstract class $DetailPortfolioCoinEventCopyWith<$Res> {
  factory $DetailPortfolioCoinEventCopyWith(
          DetailPortfolioCoinEvent value, $Res Function(DetailPortfolioCoinEvent) then) =
      _$DetailPortfolioCoinEventCopyWithImpl<$Res, DetailPortfolioCoinEvent>;
}

/// @nodoc
class _$DetailPortfolioCoinEventCopyWithImpl<$Res, $Val extends DetailPortfolioCoinEvent>
    implements $DetailPortfolioCoinEventCopyWith<$Res> {
  _$DetailPortfolioCoinEventCopyWithImpl(this._value, this._then);

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
class __$$_UpdateCopyWithImpl<$Res> extends _$DetailPortfolioCoinEventCopyWithImpl<$Res, _$_Update>
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
    return 'DetailPortfolioCoinEvent.update(data: $data)';
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
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(String coinId) deleteCoin,
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(String coinId)? deleteCoin,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(String coinId)? deleteCoin,
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

abstract class _Update implements DetailPortfolioCoinEvent {
  const factory _Update(final Either<Failure, CoinsEntity> data) = _$_Update;

  Either<Failure, CoinsEntity> get data;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(_$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res>
    extends _$DetailPortfolioCoinEventCopyWithImpl<$Res, _$_RefreshData>
    implements _$$_RefreshDataCopyWith<$Res> {
  __$$_RefreshDataCopyWithImpl(_$_RefreshData _value, $Res Function(_$_RefreshData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshData implements _RefreshData {
  const _$_RefreshData();

  @override
  String toString() {
    return 'DetailPortfolioCoinEvent.refreshData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_RefreshData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(String coinId) deleteCoin,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(String coinId)? deleteCoin,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(String coinId)? deleteCoin,
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

abstract class _RefreshData implements DetailPortfolioCoinEvent {
  const factory _RefreshData() = _$_RefreshData;
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
    extends _$DetailPortfolioCoinEventCopyWithImpl<$Res, _$_DeletePayment>
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
    return 'DetailPortfolioCoinEvent.deletePayment(payment: $payment)';
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
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(String coinId) deleteCoin,
  }) {
    return deletePayment(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(String coinId)? deleteCoin,
  }) {
    return deletePayment?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(String coinId)? deleteCoin,
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

abstract class _DeletePayment implements DetailPortfolioCoinEvent {
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
  $Res call({String coinId});
}

/// @nodoc
class __$$_DeleteCoinCopyWithImpl<$Res>
    extends _$DetailPortfolioCoinEventCopyWithImpl<$Res, _$_DeleteCoin>
    implements _$$_DeleteCoinCopyWith<$Res> {
  __$$_DeleteCoinCopyWithImpl(_$_DeleteCoin _value, $Res Function(_$_DeleteCoin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
  }) {
    return _then(_$_DeleteCoin(
      null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteCoin implements _DeleteCoin {
  const _$_DeleteCoin(this.coinId);

  @override
  final String coinId;

  @override
  String toString() {
    return 'DetailPortfolioCoinEvent.deleteCoin(coinId: $coinId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCoin &&
            (identical(other.coinId, coinId) || other.coinId == coinId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coinId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCoinCopyWith<_$_DeleteCoin> get copyWith =>
      __$$_DeleteCoinCopyWithImpl<_$_DeleteCoin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(String coinId) deleteCoin,
  }) {
    return deleteCoin(coinId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(String coinId)? deleteCoin,
  }) {
    return deleteCoin?.call(coinId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(String coinId)? deleteCoin,
    required TResult orElse(),
  }) {
    if (deleteCoin != null) {
      return deleteCoin(coinId);
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

abstract class _DeleteCoin implements DetailPortfolioCoinEvent {
  const factory _DeleteCoin(final String coinId) = _$_DeleteCoin;

  String get coinId;
  @JsonKey(ignore: true)
  _$$_DeleteCoinCopyWith<_$_DeleteCoin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailPortfolioCoinState {
  CoinEntity? get coin => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPortfolioCoinStateCopyWith<DetailPortfolioCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPortfolioCoinStateCopyWith<$Res> {
  factory $DetailPortfolioCoinStateCopyWith(
          DetailPortfolioCoinState value, $Res Function(DetailPortfolioCoinState) then) =
      _$DetailPortfolioCoinStateCopyWithImpl<$Res, DetailPortfolioCoinState>;
  @useResult
  $Res call({CoinEntity? coin, bool loading, Failure? error});

  $CoinEntityCopyWith<$Res>? get coin;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$DetailPortfolioCoinStateCopyWithImpl<$Res, $Val extends DetailPortfolioCoinState>
    implements $DetailPortfolioCoinStateCopyWith<$Res> {
  _$DetailPortfolioCoinStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_DetailPortfolioCoinStateCopyWith<$Res>
    implements $DetailPortfolioCoinStateCopyWith<$Res> {
  factory _$$_DetailPortfolioCoinStateCopyWith(
          _$_DetailPortfolioCoinState value, $Res Function(_$_DetailPortfolioCoinState) then) =
      __$$_DetailPortfolioCoinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinEntity? coin, bool loading, Failure? error});

  @override
  $CoinEntityCopyWith<$Res>? get coin;
  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_DetailPortfolioCoinStateCopyWithImpl<$Res>
    extends _$DetailPortfolioCoinStateCopyWithImpl<$Res, _$_DetailPortfolioCoinState>
    implements _$$_DetailPortfolioCoinStateCopyWith<$Res> {
  __$$_DetailPortfolioCoinStateCopyWithImpl(
      _$_DetailPortfolioCoinState _value, $Res Function(_$_DetailPortfolioCoinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_DetailPortfolioCoinState(
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

class _$_DetailPortfolioCoinState implements _DetailPortfolioCoinState {
  const _$_DetailPortfolioCoinState({required this.coin, this.loading = false, this.error});

  @override
  final CoinEntity? coin;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'DetailPortfolioCoinState(coin: $coin, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailPortfolioCoinState &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coin, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailPortfolioCoinStateCopyWith<_$_DetailPortfolioCoinState> get copyWith =>
      __$$_DetailPortfolioCoinStateCopyWithImpl<_$_DetailPortfolioCoinState>(this, _$identity);
}

abstract class _DetailPortfolioCoinState implements DetailPortfolioCoinState {
  const factory _DetailPortfolioCoinState(
      {required final CoinEntity? coin,
      final bool loading,
      final Failure? error}) = _$_DetailPortfolioCoinState;

  @override
  CoinEntity? get coin;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_DetailPortfolioCoinStateCopyWith<_$_DetailPortfolioCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
