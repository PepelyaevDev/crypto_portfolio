// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String? symbol) init,
    required TResult Function(Completer<void> completer) refresh,
    required TResult Function(NewsListEntity oldList) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String? symbol)? init,
    TResult? Function(Completer<void> completer)? refresh,
    TResult? Function(NewsListEntity oldList)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String? symbol)? init,
    TResult Function(Completer<void> completer)? refresh,
    TResult Function(NewsListEntity oldList)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsCategory category, String? symbol});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? symbol = freezed,
  }) {
    return _then(_$_Init(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({required this.category, this.symbol});

  @override
  final NewsCategory category;
  @override
  final String? symbol;

  @override
  String toString() {
    return 'NewsEvent.init(category: $category, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith => __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String? symbol) init,
    required TResult Function(Completer<void> completer) refresh,
    required TResult Function(NewsListEntity oldList) update,
  }) {
    return init(category, symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String? symbol)? init,
    TResult? Function(Completer<void> completer)? refresh,
    TResult? Function(NewsListEntity oldList)? update,
  }) {
    return init?.call(category, symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String? symbol)? init,
    TResult Function(Completer<void> completer)? refresh,
    TResult Function(NewsListEntity oldList)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(category, symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements NewsEvent {
  const factory _Init({required final NewsCategory category, final String? symbol}) = _$_Init;

  NewsCategory get category;
  String? get symbol;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(_$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
  @useResult
  $Res call({Completer<void> completer});
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = null,
  }) {
    return _then(_$_Refresh(
      completer: null == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>,
    ));
  }
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh({required this.completer});

  @override
  final Completer<void> completer;

  @override
  String toString() {
    return 'NewsEvent.refresh(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Refresh &&
            (identical(other.completer, completer) || other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshCopyWith<_$_Refresh> get copyWith =>
      __$$_RefreshCopyWithImpl<_$_Refresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String? symbol) init,
    required TResult Function(Completer<void> completer) refresh,
    required TResult Function(NewsListEntity oldList) update,
  }) {
    return refresh(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String? symbol)? init,
    TResult? Function(Completer<void> completer)? refresh,
    TResult? Function(NewsListEntity oldList)? update,
  }) {
    return refresh?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String? symbol)? init,
    TResult Function(Completer<void> completer)? refresh,
    TResult Function(NewsListEntity oldList)? update,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements NewsEvent {
  const factory _Refresh({required final Completer<void> completer}) = _$_Refresh;

  Completer<void> get completer;
  @JsonKey(ignore: true)
  _$$_RefreshCopyWith<_$_Refresh> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsListEntity oldList});

  $NewsListEntityCopyWith<$Res> get oldList;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldList = null,
  }) {
    return _then(_$_Update(
      oldList: null == oldList
          ? _value.oldList
          : oldList // ignore: cast_nullable_to_non_nullable
              as NewsListEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsListEntityCopyWith<$Res> get oldList {
    return $NewsListEntityCopyWith<$Res>(_value.oldList, (value) {
      return _then(_value.copyWith(oldList: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update({required this.oldList});

  @override
  final NewsListEntity oldList;

  @override
  String toString() {
    return 'NewsEvent.update(oldList: $oldList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.oldList, oldList) || other.oldList == oldList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory category, String? symbol) init,
    required TResult Function(Completer<void> completer) refresh,
    required TResult Function(NewsListEntity oldList) update,
  }) {
    return update(oldList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsCategory category, String? symbol)? init,
    TResult? Function(Completer<void> completer)? refresh,
    TResult? Function(NewsListEntity oldList)? update,
  }) {
    return update?.call(oldList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory category, String? symbol)? init,
    TResult Function(Completer<void> completer)? refresh,
    TResult Function(NewsListEntity oldList)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(oldList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements NewsEvent {
  const factory _Update({required final NewsListEntity oldList}) = _$_Update;

  NewsListEntity get oldList;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noCoins,
    required TResult Function(NewsListEntity news, DateTime timeStamp) success,
    required TResult Function(NewsListEntity? news, Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noCoins,
    TResult? Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult? Function(NewsListEntity? news, Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noCoins,
    TResult Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult Function(NewsListEntity? news, Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoCoins value) noCoins,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoCoins value)? noCoins,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoCoins value)? noCoins,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

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
class __$$_LoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewsState.loading()';
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
    required TResult Function() noCoins,
    required TResult Function(NewsListEntity news, DateTime timeStamp) success,
    required TResult Function(NewsListEntity? news, Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noCoins,
    TResult? Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult? Function(NewsListEntity? news, Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noCoins,
    TResult Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult Function(NewsListEntity? news, Failure error)? error,
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
    required TResult Function(_NoCoins value) noCoins,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoCoins value)? noCoins,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoCoins value)? noCoins,
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

abstract class _Loading implements NewsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_NoCoinsCopyWith<$Res> {
  factory _$$_NoCoinsCopyWith(_$_NoCoins value, $Res Function(_$_NoCoins) then) =
      __$$_NoCoinsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoCoinsCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res, _$_NoCoins>
    implements _$$_NoCoinsCopyWith<$Res> {
  __$$_NoCoinsCopyWithImpl(_$_NoCoins _value, $Res Function(_$_NoCoins) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoCoins implements _NoCoins {
  const _$_NoCoins();

  @override
  String toString() {
    return 'NewsState.noCoins()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_NoCoins);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noCoins,
    required TResult Function(NewsListEntity news, DateTime timeStamp) success,
    required TResult Function(NewsListEntity? news, Failure error) error,
  }) {
    return noCoins();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noCoins,
    TResult? Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult? Function(NewsListEntity? news, Failure error)? error,
  }) {
    return noCoins?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noCoins,
    TResult Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult Function(NewsListEntity? news, Failure error)? error,
    required TResult orElse(),
  }) {
    if (noCoins != null) {
      return noCoins();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoCoins value) noCoins,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return noCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoCoins value)? noCoins,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return noCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoCoins value)? noCoins,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noCoins != null) {
      return noCoins(this);
    }
    return orElse();
  }
}

abstract class _NoCoins implements NewsState {
  const factory _NoCoins() = _$_NoCoins;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(_$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsListEntity news, DateTime timeStamp});

  $NewsListEntityCopyWith<$Res> get news;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? timeStamp = null,
  }) {
    return _then(_$_Success(
      null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsListEntity,
      null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsListEntityCopyWith<$Res> get news {
    return $NewsListEntityCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.news, this.timeStamp);

  @override
  final NewsListEntity news;
  @override
  final DateTime timeStamp;

  @override
  String toString() {
    return 'NewsState.success(news: $news, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, news, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noCoins,
    required TResult Function(NewsListEntity news, DateTime timeStamp) success,
    required TResult Function(NewsListEntity? news, Failure error) error,
  }) {
    return success(news, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noCoins,
    TResult? Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult? Function(NewsListEntity? news, Failure error)? error,
  }) {
    return success?.call(news, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noCoins,
    TResult Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult Function(NewsListEntity? news, Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(news, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoCoins value) noCoins,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoCoins value)? noCoins,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoCoins value)? noCoins,
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

abstract class _Success implements NewsState {
  const factory _Success(final NewsListEntity news, final DateTime timeStamp) = _$_Success;

  NewsListEntity get news;
  DateTime get timeStamp;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsListEntity? news, Failure error});

  $NewsListEntityCopyWith<$Res>? get news;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = freezed,
    Object? error = null,
  }) {
    return _then(_$_Error(
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsListEntity?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsListEntityCopyWith<$Res>? get news {
    if (_value.news == null) {
      return null;
    }

    return $NewsListEntityCopyWith<$Res>(_value.news!, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.news, required this.error});

  @override
  final NewsListEntity? news;
  @override
  final Failure error;

  @override
  String toString() {
    return 'NewsState.error(news: $news, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, news, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith => __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noCoins,
    required TResult Function(NewsListEntity news, DateTime timeStamp) success,
    required TResult Function(NewsListEntity? news, Failure error) error,
  }) {
    return error(news, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noCoins,
    TResult? Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult? Function(NewsListEntity? news, Failure error)? error,
  }) {
    return error?.call(news, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noCoins,
    TResult Function(NewsListEntity news, DateTime timeStamp)? success,
    TResult Function(NewsListEntity? news, Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(news, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoCoins value) noCoins,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoCoins value)? noCoins,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_NoCoins value)? noCoins,
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

abstract class _Error implements NewsState {
  const factory _Error({final NewsListEntity? news, required final Failure error}) = _$_Error;

  NewsListEntity? get news;
  Failure get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith => throw _privateConstructorUsedError;
}
