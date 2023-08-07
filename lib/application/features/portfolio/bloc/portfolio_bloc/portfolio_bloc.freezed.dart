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
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
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
abstract class $PortfolioEventCopyWith<$Res> {
  factory $PortfolioEventCopyWith(
          PortfolioEvent value, $Res Function(PortfolioEvent) then) =
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
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, CoinsEntity> data});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

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
    return 'PortfolioEvent.update(data: $data)';
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
  }) {
    return update(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
  }) {
    return update?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
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

abstract class _Update implements PortfolioEvent {
  const factory _Update(final Either<Failure, CoinsEntity> data) = _$_Update;

  Either<Failure, CoinsEntity> get data;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshDataCopyWith<$Res> {
  factory _$$_RefreshDataCopyWith(
          _$_RefreshData value, $Res Function(_$_RefreshData) then) =
      __$$_RefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshDataCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$_RefreshData>
    implements _$$_RefreshDataCopyWith<$Res> {
  __$$_RefreshDataCopyWithImpl(
      _$_RefreshData _value, $Res Function(_$_RefreshData) _then)
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Either<Failure, CoinsEntity> data) update,
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Either<Failure, CoinsEntity> data)? update,
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Either<Failure, CoinsEntity> data)? update,
    TResult Function()? refreshData,
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

abstract class _RefreshData implements PortfolioEvent {
  const factory _RefreshData() = _$_RefreshData;
}

/// @nodoc
mixin _$PortfolioState {
  CoinsEntity get coins => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res, PortfolioState>;
  @useResult
  $Res call({CoinsEntity coins, bool loading, Failure? error});

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
abstract class _$$_PortfolioStateCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$$_PortfolioStateCopyWith(
          _$_PortfolioState value, $Res Function(_$_PortfolioState) then) =
      __$$_PortfolioStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoinsEntity coins, bool loading, Failure? error});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
}

/// @nodoc
class __$$_PortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$_PortfolioState>
    implements _$$_PortfolioStateCopyWith<$Res> {
  __$$_PortfolioStateCopyWithImpl(
      _$_PortfolioState _value, $Res Function(_$_PortfolioState) _then)
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
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_PortfolioState implements _PortfolioState {
  const _$_PortfolioState(
      {required this.coins, this.loading = false, this.error});

  @override
  final CoinsEntity coins;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

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
      final Failure? error}) = _$_PortfolioState;

  @override
  CoinsEntity get coins;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}
