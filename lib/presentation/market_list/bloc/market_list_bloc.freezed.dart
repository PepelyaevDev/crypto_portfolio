// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketListEvent {
  Completer<void>? get completer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Completer<void>? completer) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<void>? completer)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<void>? completer)? refreshData,
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

  @JsonKey(ignore: true)
  $MarketListEventCopyWith<MarketListEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketListEventCopyWith<$Res> {
  factory $MarketListEventCopyWith(MarketListEvent value, $Res Function(MarketListEvent) then) =
      _$MarketListEventCopyWithImpl<$Res, MarketListEvent>;
  @useResult
  $Res call({Completer<void>? completer});
}

/// @nodoc
class _$MarketListEventCopyWithImpl<$Res, $Val extends MarketListEvent>
    implements $MarketListEventCopyWith<$Res> {
  _$MarketListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = freezed,
  }) {
    return _then(_value.copyWith(
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> implements $MarketListEventCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(_$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Completer<void>? completer});
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res> extends _$MarketListEventCopyWithImpl<$Res, _$_RefreshData>
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
    return 'MarketListEvent.refreshData(completer: $completer)';
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
    required TResult Function(Completer<void>? completer) refreshData,
  }) {
    return refreshData(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Completer<void>? completer)? refreshData,
  }) {
    return refreshData?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Completer<void>? completer)? refreshData,
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

abstract class _RefreshData implements MarketListEvent {
  const factory _RefreshData({final Completer<void>? completer}) = _$_RefreshData;

  @override
  Completer<void>? get completer;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshDataCopyWith<_$_RefreshData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketListState {
  CoinsEntity get coins => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketListStateCopyWith<MarketListState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketListStateCopyWith<$Res> {
  factory $MarketListStateCopyWith(MarketListState value, $Res Function(MarketListState) then) =
      _$MarketListStateCopyWithImpl<$Res, MarketListState>;
  @useResult
  $Res call({CoinsEntity coins, bool loading, Failure? error});

  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class _$MarketListStateCopyWithImpl<$Res, $Val extends MarketListState>
    implements $MarketListStateCopyWith<$Res> {
  _$MarketListStateCopyWithImpl(this._value, this._then);

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
              as Failure?,
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
abstract class _$$_MarketListStateCopyWith<$Res> implements $MarketListStateCopyWith<$Res> {
  factory _$$_MarketListStateCopyWith(
          _$_MarketListState value, $Res Function(_$_MarketListState) then) =
      __$$_MarketListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinsEntity coins, bool loading, Failure? error});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_MarketListStateCopyWithImpl<$Res>
    extends _$MarketListStateCopyWithImpl<$Res, _$_MarketListState>
    implements _$$_MarketListStateCopyWith<$Res> {
  __$$_MarketListStateCopyWithImpl(
      _$_MarketListState _value, $Res Function(_$_MarketListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_MarketListState(
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
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_MarketListState implements _MarketListState {
  const _$_MarketListState({required this.coins, this.loading = false, this.error});

  @override
  final CoinsEntity coins;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'MarketListState(coins: $coins, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketListState &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketListStateCopyWith<_$_MarketListState> get copyWith =>
      __$$_MarketListStateCopyWithImpl<_$_MarketListState>(this, _$identity);
}

abstract class _MarketListState implements MarketListState {
  const factory _MarketListState(
      {required final CoinsEntity coins,
      final bool loading,
      final Failure? error}) = _$_MarketListState;

  @override
  CoinsEntity get coins;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_MarketListStateCopyWith<_$_MarketListState> get copyWith =>
      throw _privateConstructorUsedError;
}
