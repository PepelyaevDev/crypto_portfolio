// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function(Completer<void>? completer) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioListEventCopyWith<$Res> {
  factory $PortfolioListEventCopyWith(
          PortfolioListEvent value, $Res Function(PortfolioListEvent) then) =
      _$PortfolioListEventCopyWithImpl<$Res, PortfolioListEvent>;
}

/// @nodoc
class _$PortfolioListEventCopyWithImpl<$Res, $Val extends PortfolioListEvent>
    implements $PortfolioListEventCopyWith<$Res> {
  _$PortfolioListEventCopyWithImpl(this._value, this._then);

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
class __$$_UpdateCopyWithImpl<$Res> extends _$PortfolioListEventCopyWithImpl<$Res, _$_Update>
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
    return 'PortfolioListEvent.update(data: $data)';
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
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function(Completer<void>? completer)? refreshData,
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
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PortfolioListEvent {
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
    extends _$PortfolioListEventCopyWithImpl<$Res, _$_RefreshData>
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
    return 'PortfolioListEvent.refreshData(completer: $completer)';
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
  }) {
    return refreshData(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function(Completer<void>? completer)? refreshData,
  }) {
    return refreshData?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
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
    required TResult Function(_Update value) update,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements PortfolioListEvent {
  const factory _RefreshData({final Completer<void>? completer}) = _$_RefreshData;

  Completer<void>? get completer;
  @JsonKey(ignore: true)
  _$$_RefreshDataCopyWith<_$_RefreshData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PortfolioListState {
  CoinsEntity get coins => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioListStateCopyWith<PortfolioListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioListStateCopyWith<$Res> {
  factory $PortfolioListStateCopyWith(
          PortfolioListState value, $Res Function(PortfolioListState) then) =
      _$PortfolioListStateCopyWithImpl<$Res, PortfolioListState>;
  @useResult
  $Res call({CoinsEntity coins, bool loading, Failure? error});

  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class _$PortfolioListStateCopyWithImpl<$Res, $Val extends PortfolioListState>
    implements $PortfolioListStateCopyWith<$Res> {
  _$PortfolioListStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_PortfolioListStateCopyWith<$Res> implements $PortfolioListStateCopyWith<$Res> {
  factory _$$_PortfolioListStateCopyWith(
          _$_PortfolioListState value, $Res Function(_$_PortfolioListState) then) =
      __$$_PortfolioListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinsEntity coins, bool loading, Failure? error});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_PortfolioListStateCopyWithImpl<$Res>
    extends _$PortfolioListStateCopyWithImpl<$Res, _$_PortfolioListState>
    implements _$$_PortfolioListStateCopyWith<$Res> {
  __$$_PortfolioListStateCopyWithImpl(
      _$_PortfolioListState _value, $Res Function(_$_PortfolioListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_PortfolioListState(
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

class _$_PortfolioListState implements _PortfolioListState {
  const _$_PortfolioListState({required this.coins, this.loading = false, this.error});

  @override
  final CoinsEntity coins;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'PortfolioListState(coins: $coins, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioListState &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coins, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioListStateCopyWith<_$_PortfolioListState> get copyWith =>
      __$$_PortfolioListStateCopyWithImpl<_$_PortfolioListState>(this, _$identity);
}

abstract class _PortfolioListState implements PortfolioListState {
  const factory _PortfolioListState(
      {required final CoinsEntity coins,
      final bool loading,
      final Failure? error}) = _$_PortfolioListState;

  @override
  CoinsEntity get coins;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioListStateCopyWith<_$_PortfolioListState> get copyWith =>
      throw _privateConstructorUsedError;
}
