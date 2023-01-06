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
  Payment get payment => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment payment) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Payment payment)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payment payment)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPaymentEventCopyWith<AddPaymentEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPaymentEventCopyWith<$Res> {
  factory $AddPaymentEventCopyWith(AddPaymentEvent value, $Res Function(AddPaymentEvent) then) =
      _$AddPaymentEventCopyWithImpl<$Res, AddPaymentEvent>;
  @useResult
  $Res call({Payment payment});
}

/// @nodoc
class _$AddPaymentEventCopyWithImpl<$Res, $Val extends AddPaymentEvent>
    implements $AddPaymentEventCopyWith<$Res> {
  _$AddPaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_value.copyWith(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> implements $AddPaymentEventCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) = __$$_AddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Payment payment});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$AddPaymentEventCopyWithImpl<$Res, _$_Add>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$_Add(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add({required this.payment});

  @override
  final Payment payment;

  @override
  String toString() {
    return 'AddPaymentEvent.add(payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCopyWith<_$_Add> get copyWith => __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Payment payment) add,
  }) {
    return add(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Payment payment)? add,
  }) {
    return add?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Payment payment)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AddPaymentEvent {
  const factory _Add({required final Payment payment}) = _$_Add;

  @override
  Payment get payment;
  @override
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MarketCoin> marketCoinsList) initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MarketCoin> marketCoinsList)? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MarketCoin> marketCoinsList)? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPaymentStateCopyWith<$Res> {
  factory $AddPaymentStateCopyWith(AddPaymentState value, $Res Function(AddPaymentState) then) =
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
  factory _$$_InitialCopyWith(_$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MarketCoin> marketCoinsList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AddPaymentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketCoinsList = null,
  }) {
    return _then(_$_Initial(
      marketCoinsList: null == marketCoinsList
          ? _value._marketCoinsList
          : marketCoinsList // ignore: cast_nullable_to_non_nullable
              as List<MarketCoin>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required final List<MarketCoin> marketCoinsList})
      : _marketCoinsList = marketCoinsList;

  final List<MarketCoin> _marketCoinsList;
  @override
  List<MarketCoin> get marketCoinsList {
    if (_marketCoinsList is EqualUnmodifiableListView) return _marketCoinsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketCoinsList);
  }

  @override
  String toString() {
    return 'AddPaymentState.initial(marketCoinsList: $marketCoinsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._marketCoinsList, _marketCoinsList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_marketCoinsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MarketCoin> marketCoinsList) initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return initial(marketCoinsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MarketCoin> marketCoinsList)? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return initial?.call(marketCoinsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MarketCoin> marketCoinsList)? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(marketCoinsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddPaymentState {
  const factory _Initial({required final List<MarketCoin> marketCoinsList}) = _$_Initial;

  List<MarketCoin> get marketCoinsList;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(_$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AddPaymentStateCopyWithImpl<$Res, _$_Loading>
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MarketCoin> marketCoinsList) initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MarketCoin> marketCoinsList)? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MarketCoin> marketCoinsList)? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
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
  factory _$$_SuccessCopyWith(_$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$AddPaymentStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AddPaymentState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MarketCoin> marketCoinsList) initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MarketCoin> marketCoinsList)? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MarketCoin> marketCoinsList)? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddPaymentState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(_$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$AddPaymentStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'AddPaymentState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MarketCoin> marketCoinsList) initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MarketCoin> marketCoinsList)? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MarketCoin> marketCoinsList)? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AddPaymentState {
  const factory _Failure() = _$_Failure;
}
