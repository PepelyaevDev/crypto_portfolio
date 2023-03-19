// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity paymentEntity) updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity paymentEntity)? updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(PaymentEntity paymentEntity)? updateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_UpdateHistory value) updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioEventCopyWith<$Res> {
  factory $PortfolioEventCopyWith(PortfolioEvent value, $Res Function(PortfolioEvent) then) =
      _$PortfolioEventCopyWithImpl<$Res, PortfolioEvent>;
}

/// @nodoc
class _$PortfolioEventCopyWithImpl<$Res, $Val extends PortfolioEvent>
    implements $PortfolioEventCopyWith<$Res> {
  _$PortfolioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(_$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res> extends _$PortfolioEventCopyWithImpl<$Res, _$_RefreshData>
    implements _$$_RefreshDataCopyWith<$Res> {
  __$$_RefreshDataCopyWithImpl(_$_RefreshData _value, $Res Function(_$_RefreshData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshData implements _RefreshData {
  const _$_RefreshData();

  @override
  String toString() {
    return 'PortfolioEvent.refreshData()';
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
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity paymentEntity) updateHistory,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity paymentEntity)? updateHistory,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(PaymentEntity paymentEntity)? updateHistory,
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
    required TResult Function(_UpdateHistory value) updateHistory,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements PortfolioEvent {
  const factory _RefreshData() = _$_RefreshData;
}

/// @nodoc
abstract class _$$_UpdateHistoryCopyWith<$Res> {
  factory _$$_UpdateHistoryCopyWith(_$_UpdateHistory value, $Res Function(_$_UpdateHistory) then) =
      __$$_UpdateHistoryCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentEntity paymentEntity});

  $PaymentEntityCopyWith<$Res> get paymentEntity;
}

/// @nodoc
class __$$_UpdateHistoryCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$_UpdateHistory>
    implements _$$_UpdateHistoryCopyWith<$Res> {
  __$$_UpdateHistoryCopyWithImpl(_$_UpdateHistory _value, $Res Function(_$_UpdateHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentEntity = null,
  }) {
    return _then(_$_UpdateHistory(
      null == paymentEntity
          ? _value.paymentEntity
          : paymentEntity // ignore: cast_nullable_to_non_nullable
              as PaymentEntity,
    ));
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
  const _$_UpdateHistory(this.paymentEntity);

  @override
  final PaymentEntity paymentEntity;

  @override
  String toString() {
    return 'PortfolioEvent.updateHistory(paymentEntity: $paymentEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateHistory &&
            (identical(other.paymentEntity, paymentEntity) ||
                other.paymentEntity == paymentEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateHistoryCopyWith<_$_UpdateHistory> get copyWith =>
      __$$_UpdateHistoryCopyWithImpl<_$_UpdateHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
    required TResult Function(PaymentEntity paymentEntity) updateHistory,
  }) {
    return updateHistory(paymentEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(PaymentEntity paymentEntity)? updateHistory,
  }) {
    return updateHistory?.call(paymentEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(PaymentEntity paymentEntity)? updateHistory,
    required TResult orElse(),
  }) {
    if (updateHistory != null) {
      return updateHistory(paymentEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshData value) refreshData,
    required TResult Function(_UpdateHistory value) updateHistory,
  }) {
    return updateHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RefreshData value)? refreshData,
    TResult? Function(_UpdateHistory value)? updateHistory,
  }) {
    return updateHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshData value)? refreshData,
    TResult Function(_UpdateHistory value)? updateHistory,
    required TResult orElse(),
  }) {
    if (updateHistory != null) {
      return updateHistory(this);
    }
    return orElse();
  }
}

abstract class _UpdateHistory implements PortfolioEvent {
  const factory _UpdateHistory(final PaymentEntity paymentEntity) = _$_UpdateHistory;

  PaymentEntity get paymentEntity;
  @JsonKey(ignore: true)
  _$$_UpdateHistoryCopyWith<_$_UpdateHistory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PortfolioState {
  CoinsEntity get coins => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res, PortfolioState>;
  @useResult
  $Res call({CoinsEntity coins, bool loading, String? error});

  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res, $Val extends PortfolioState>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_PortfolioStateCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$$_PortfolioStateCopyWith(
          _$_PortfolioState value, $Res Function(_$_PortfolioState) then) =
      __$$_PortfolioStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinsEntity coins, bool loading, String? error});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_PortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$_PortfolioState>
    implements _$$_PortfolioStateCopyWith<$Res> {
  __$$_PortfolioStateCopyWithImpl(_$_PortfolioState _value, $Res Function(_$_PortfolioState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_PortfolioState(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PortfolioState implements _PortfolioState {
  const _$_PortfolioState({required this.coins, this.loading = false, this.error});

  @override
  final CoinsEntity coins;
  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'PortfolioState(coins: $coins, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioState &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith =>
      __$$_PortfolioStateCopyWithImpl<_$_PortfolioState>(this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  const factory _PortfolioState(
      {required final CoinsEntity coins,
      final bool loading,
      final String? error}) = _$_PortfolioState;

  @override
  CoinsEntity get coins;
  @override
  bool get loading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith => throw _privateConstructorUsedError;
}
