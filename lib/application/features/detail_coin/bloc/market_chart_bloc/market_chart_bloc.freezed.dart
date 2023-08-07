// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_chart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketChartEvent {
  MarketChartDistance get distance => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MarketChartDistance distance) setDistance,
    required TResult Function(MarketChartDistance distance) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MarketChartDistance distance)? setDistance,
    TResult? Function(MarketChartDistance distance)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MarketChartDistance distance)? setDistance,
    TResult Function(MarketChartDistance distance)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDistance value) setDistance,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDistance value)? setDistance,
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDistance value)? setDistance,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketChartEventCopyWith<MarketChartEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketChartEventCopyWith<$Res> {
  factory $MarketChartEventCopyWith(MarketChartEvent value, $Res Function(MarketChartEvent) then) =
      _$MarketChartEventCopyWithImpl<$Res, MarketChartEvent>;
  @useResult
  $Res call({MarketChartDistance distance});
}

/// @nodoc
class _$MarketChartEventCopyWithImpl<$Res, $Val extends MarketChartEvent>
    implements $MarketChartEventCopyWith<$Res> {
  _$MarketChartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as MarketChartDistance,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetDistanceCopyWith<$Res> implements $MarketChartEventCopyWith<$Res> {
  factory _$$_SetDistanceCopyWith(_$_SetDistance value, $Res Function(_$_SetDistance) then) =
      __$$_SetDistanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MarketChartDistance distance});
}

/// @nodoc
class __$$_SetDistanceCopyWithImpl<$Res>
    extends _$MarketChartEventCopyWithImpl<$Res, _$_SetDistance>
    implements _$$_SetDistanceCopyWith<$Res> {
  __$$_SetDistanceCopyWithImpl(_$_SetDistance _value, $Res Function(_$_SetDistance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
  }) {
    return _then(_$_SetDistance(
      null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as MarketChartDistance,
    ));
  }
}

/// @nodoc

class _$_SetDistance implements _SetDistance {
  const _$_SetDistance(this.distance);

  @override
  final MarketChartDistance distance;

  @override
  String toString() {
    return 'MarketChartEvent.setDistance(distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDistance &&
            (identical(other.distance, distance) || other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDistanceCopyWith<_$_SetDistance> get copyWith =>
      __$$_SetDistanceCopyWithImpl<_$_SetDistance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MarketChartDistance distance) setDistance,
    required TResult Function(MarketChartDistance distance) refresh,
  }) {
    return setDistance(distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MarketChartDistance distance)? setDistance,
    TResult? Function(MarketChartDistance distance)? refresh,
  }) {
    return setDistance?.call(distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MarketChartDistance distance)? setDistance,
    TResult Function(MarketChartDistance distance)? refresh,
    required TResult orElse(),
  }) {
    if (setDistance != null) {
      return setDistance(distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDistance value) setDistance,
    required TResult Function(_Refresh value) refresh,
  }) {
    return setDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDistance value)? setDistance,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return setDistance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDistance value)? setDistance,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (setDistance != null) {
      return setDistance(this);
    }
    return orElse();
  }
}

abstract class _SetDistance implements MarketChartEvent {
  const factory _SetDistance(final MarketChartDistance distance) = _$_SetDistance;

  @override
  MarketChartDistance get distance;
  @override
  @JsonKey(ignore: true)
  _$$_SetDistanceCopyWith<_$_SetDistance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> implements $MarketChartEventCopyWith<$Res> {
  factory _$$_RefreshCopyWith(_$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MarketChartDistance distance});
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res> extends _$MarketChartEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
  }) {
    return _then(_$_Refresh(
      null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as MarketChartDistance,
    ));
  }
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh(this.distance);

  @override
  final MarketChartDistance distance;

  @override
  String toString() {
    return 'MarketChartEvent.refresh(distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Refresh &&
            (identical(other.distance, distance) || other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshCopyWith<_$_Refresh> get copyWith =>
      __$$_RefreshCopyWithImpl<_$_Refresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MarketChartDistance distance) setDistance,
    required TResult Function(MarketChartDistance distance) refresh,
  }) {
    return refresh(distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MarketChartDistance distance)? setDistance,
    TResult? Function(MarketChartDistance distance)? refresh,
  }) {
    return refresh?.call(distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MarketChartDistance distance)? setDistance,
    TResult Function(MarketChartDistance distance)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDistance value) setDistance,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDistance value)? setDistance,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDistance value)? setDistance,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements MarketChartEvent {
  const factory _Refresh(final MarketChartDistance distance) = _$_Refresh;

  @override
  MarketChartDistance get distance;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshCopyWith<_$_Refresh> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketChartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MarketChartEntity marketChart) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MarketChartEntity marketChart)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MarketChartEntity marketChart)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketChartStateCopyWith<$Res> {
  factory $MarketChartStateCopyWith(MarketChartState value, $Res Function(MarketChartState) then) =
      _$MarketChartStateCopyWithImpl<$Res, MarketChartState>;
}

/// @nodoc
class _$MarketChartStateCopyWithImpl<$Res, $Val extends MarketChartState>
    implements $MarketChartStateCopyWith<$Res> {
  _$MarketChartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(_$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$MarketChartStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MarketChartState.loading()';
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
    required TResult Function() loading,
    required TResult Function(MarketChartEntity marketChart) success,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MarketChartEntity marketChart)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MarketChartEntity marketChart)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Loading implements MarketChartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(_$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({MarketChartEntity marketChart});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$MarketChartStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketChart = null,
  }) {
    return _then(_$_Success(
      null == marketChart
          ? _value.marketChart
          : marketChart // ignore: cast_nullable_to_non_nullable
              as MarketChartEntity,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.marketChart);

  @override
  final MarketChartEntity marketChart;

  @override
  String toString() {
    return 'MarketChartState.success(marketChart: $marketChart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.marketChart, marketChart) || other.marketChart == marketChart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marketChart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MarketChartEntity marketChart) success,
    required TResult Function(Failure error) error,
  }) {
    return success(marketChart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MarketChartEntity marketChart)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(marketChart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MarketChartEntity marketChart)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(marketChart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Success implements MarketChartState {
  const factory _Success(final MarketChartEntity marketChart) = _$_Success;

  MarketChartEntity get marketChart;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$MarketChartStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then) : super(_value, _then);

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
    return 'MarketChartState.error(error: $error)';
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
  _$$_ErrorCopyWith<_$_Error> get copyWith => __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MarketChartEntity marketChart) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MarketChartEntity marketChart)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MarketChartEntity marketChart)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Error implements MarketChartState {
  const factory _Error(final Failure error) = _$_Error;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith => throw _privateConstructorUsedError;
}
