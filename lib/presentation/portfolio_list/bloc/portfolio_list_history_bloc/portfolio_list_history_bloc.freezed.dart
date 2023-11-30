// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_list_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioListHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinsEntity coins) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinsEntity coins)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinsEntity coins)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioListHistoryEventCopyWith<$Res> {
  factory $PortfolioListHistoryEventCopyWith(
          PortfolioListHistoryEvent value, $Res Function(PortfolioListHistoryEvent) then) =
      _$PortfolioListHistoryEventCopyWithImpl<$Res, PortfolioListHistoryEvent>;
}

/// @nodoc
class _$PortfolioListHistoryEventCopyWithImpl<$Res, $Val extends PortfolioListHistoryEvent>
    implements $PortfolioListHistoryEventCopyWith<$Res> {
  _$PortfolioListHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$PortfolioListHistoryEventCopyWithImpl<$Res, _$_DeletePayment>
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
    return 'PortfolioListHistoryEvent.deletePayment(payment: $payment)';
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
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinsEntity coins) update,
  }) {
    return deletePayment(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinsEntity coins)? update,
  }) {
    return deletePayment?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinsEntity coins)? update,
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
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_Update value) update,
  }) {
    return deletePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_Update value)? update,
  }) {
    return deletePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (deletePayment != null) {
      return deletePayment(this);
    }
    return orElse();
  }
}

abstract class _DeletePayment implements PortfolioListHistoryEvent {
  const factory _DeletePayment(final PaymentEntity payment) = _$_DeletePayment;

  PaymentEntity get payment;
  @JsonKey(ignore: true)
  _$$_DeletePaymentCopyWith<_$_DeletePayment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({CoinsEntity coins});

  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$PortfolioListHistoryEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$_Update(
      null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinsEntityCopyWith<$Res> get coins {
    return $CoinsEntityCopyWith<$Res>(_value.coins, (value) {
      return _then(_value.copyWith(coins: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.coins);

  @override
  final CoinsEntity coins;

  @override
  String toString() {
    return 'PortfolioListHistoryEvent.update(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentEntity payment) deletePayment,
    required TResult Function(CoinsEntity coins) update,
  }) {
    return update(coins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentEntity payment)? deletePayment,
    TResult? Function(CoinsEntity coins)? update,
  }) {
    return update?.call(coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentEntity payment)? deletePayment,
    TResult Function(CoinsEntity coins)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePayment value) deletePayment,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePayment value)? deletePayment,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePayment value)? deletePayment,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PortfolioListHistoryEvent {
  const factory _Update(final CoinsEntity coins) = _$_Update;

  CoinsEntity get coins;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PortfolioListHistoryState {
  CoinsEntity get coins => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioListHistoryStateCopyWith<PortfolioListHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioListHistoryStateCopyWith<$Res> {
  factory $PortfolioListHistoryStateCopyWith(
          PortfolioListHistoryState value, $Res Function(PortfolioListHistoryState) then) =
      _$PortfolioListHistoryStateCopyWithImpl<$Res, PortfolioListHistoryState>;
  @useResult
  $Res call({CoinsEntity coins});

  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class _$PortfolioListHistoryStateCopyWithImpl<$Res, $Val extends PortfolioListHistoryState>
    implements $PortfolioListHistoryStateCopyWith<$Res> {
  _$PortfolioListHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
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
abstract class _$$_PortfolioListHistoryStateCopyWith<$Res>
    implements $PortfolioListHistoryStateCopyWith<$Res> {
  factory _$$_PortfolioListHistoryStateCopyWith(
          _$_PortfolioListHistoryState value, $Res Function(_$_PortfolioListHistoryState) then) =
      __$$_PortfolioListHistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinsEntity coins});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_PortfolioListHistoryStateCopyWithImpl<$Res>
    extends _$PortfolioListHistoryStateCopyWithImpl<$Res, _$_PortfolioListHistoryState>
    implements _$$_PortfolioListHistoryStateCopyWith<$Res> {
  __$$_PortfolioListHistoryStateCopyWithImpl(
      _$_PortfolioListHistoryState _value, $Res Function(_$_PortfolioListHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$_PortfolioListHistoryState(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as CoinsEntity,
    ));
  }
}

/// @nodoc

class _$_PortfolioListHistoryState implements _PortfolioListHistoryState {
  const _$_PortfolioListHistoryState({required this.coins});

  @override
  final CoinsEntity coins;

  @override
  String toString() {
    return 'PortfolioListHistoryState(coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioListHistoryState &&
            (identical(other.coins, coins) || other.coins == coins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioListHistoryStateCopyWith<_$_PortfolioListHistoryState> get copyWith =>
      __$$_PortfolioListHistoryStateCopyWithImpl<_$_PortfolioListHistoryState>(this, _$identity);
}

abstract class _PortfolioListHistoryState implements PortfolioListHistoryState {
  const factory _PortfolioListHistoryState({required final CoinsEntity coins}) =
      _$_PortfolioListHistoryState;

  @override
  CoinsEntity get coins;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioListHistoryStateCopyWith<_$_PortfolioListHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
