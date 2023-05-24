// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) update,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? update,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? update,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistEventCopyWith<$Res> {
  factory $WatchlistEventCopyWith(WatchlistEvent value, $Res Function(WatchlistEvent) then) =
      _$WatchlistEventCopyWithImpl<$Res, WatchlistEvent>;
}

/// @nodoc
class _$WatchlistEventCopyWithImpl<$Res, $Val extends WatchlistEvent>
    implements $WatchlistEventCopyWith<$Res> {
  _$WatchlistEventCopyWithImpl(this._value, this._then);

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
  $Res call({String id});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$WatchlistEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Update(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'WatchlistEvent.update(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) update,
    required TResult Function() refresh,
  }) {
    return update(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? update,
    TResult? Function()? refresh,
  }) {
    return update?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? update,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Refresh value) refresh,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements WatchlistEvent {
  const factory _Update(final String id) = _$_Update;

  String get id;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(_$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res> extends _$WatchlistEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'WatchlistEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) update,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? update,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? update,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements WatchlistEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
mixin _$WatchlistState {
  List<String> get idsList => throw _privateConstructorUsedError;
  CoinsEntity get coins => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchlistStateCopyWith<WatchlistState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistStateCopyWith<$Res> {
  factory $WatchlistStateCopyWith(WatchlistState value, $Res Function(WatchlistState) then) =
      _$WatchlistStateCopyWithImpl<$Res, WatchlistState>;
  @useResult
  $Res call({List<String> idsList, CoinsEntity coins, bool loading, Failure? error});

  $CoinsEntityCopyWith<$Res> get coins;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$WatchlistStateCopyWithImpl<$Res, $Val extends WatchlistState>
    implements $WatchlistStateCopyWith<$Res> {
  _$WatchlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idsList = null,
    Object? coins = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      idsList: null == idsList
          ? _value.idsList
          : idsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$_WatchlistStateCopyWith<$Res> implements $WatchlistStateCopyWith<$Res> {
  factory _$$_WatchlistStateCopyWith(
          _$_WatchlistState value, $Res Function(_$_WatchlistState) then) =
      __$$_WatchlistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> idsList, CoinsEntity coins, bool loading, Failure? error});

  @override
  $CoinsEntityCopyWith<$Res> get coins;
  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_WatchlistStateCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$_WatchlistState>
    implements _$$_WatchlistStateCopyWith<$Res> {
  __$$_WatchlistStateCopyWithImpl(_$_WatchlistState _value, $Res Function(_$_WatchlistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idsList = null,
    Object? coins = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$_WatchlistState(
      idsList: null == idsList
          ? _value._idsList
          : idsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$_WatchlistState implements _WatchlistState {
  const _$_WatchlistState(
      {required final List<String> idsList, required this.coins, this.loading = false, this.error})
      : _idsList = idsList;

  final List<String> _idsList;
  @override
  List<String> get idsList {
    if (_idsList is EqualUnmodifiableListView) return _idsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idsList);
  }

  @override
  final CoinsEntity coins;
  @override
  @JsonKey()
  final bool loading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'WatchlistState(idsList: $idsList, coins: $coins, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchlistState &&
            const DeepCollectionEquality().equals(other._idsList, _idsList) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_idsList), coins, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchlistStateCopyWith<_$_WatchlistState> get copyWith =>
      __$$_WatchlistStateCopyWithImpl<_$_WatchlistState>(this, _$identity);
}

abstract class _WatchlistState implements WatchlistState {
  const factory _WatchlistState(
      {required final List<String> idsList,
      required final CoinsEntity coins,
      final bool loading,
      final Failure? error}) = _$_WatchlistState;

  @override
  List<String> get idsList;
  @override
  CoinsEntity get coins;
  @override
  bool get loading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$_WatchlistStateCopyWith<_$_WatchlistState> get copyWith => throw _privateConstructorUsedError;
}
