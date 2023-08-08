// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsListEntity {
  List<NewsEntity> get list => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;
  List<String> get locales => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsListEntityCopyWith<NewsListEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListEntityCopyWith<$Res> {
  factory $NewsListEntityCopyWith(NewsListEntity value, $Res Function(NewsListEntity) then) =
      _$NewsListEntityCopyWithImpl<$Res, NewsListEntity>;
  @useResult
  $Res call(
      {List<NewsEntity> list,
      DateTime updateTime,
      List<String> currencies,
      List<String> locales,
      int? nextPage});
}

/// @nodoc
class _$NewsListEntityCopyWithImpl<$Res, $Val extends NewsListEntity>
    implements $NewsListEntityCopyWith<$Res> {
  _$NewsListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? updateTime = null,
    Object? currencies = null,
    Object? locales = null,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      locales: null == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsListEntityCopyWith<$Res> implements $NewsListEntityCopyWith<$Res> {
  factory _$$_NewsListEntityCopyWith(
          _$_NewsListEntity value, $Res Function(_$_NewsListEntity) then) =
      __$$_NewsListEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsEntity> list,
      DateTime updateTime,
      List<String> currencies,
      List<String> locales,
      int? nextPage});
}

/// @nodoc
class __$$_NewsListEntityCopyWithImpl<$Res>
    extends _$NewsListEntityCopyWithImpl<$Res, _$_NewsListEntity>
    implements _$$_NewsListEntityCopyWith<$Res> {
  __$$_NewsListEntityCopyWithImpl(_$_NewsListEntity _value, $Res Function(_$_NewsListEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? updateTime = null,
    Object? currencies = null,
    Object? locales = null,
    Object? nextPage = freezed,
  }) {
    return _then(_$_NewsListEntity(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      locales: null == locales
          ? _value._locales
          : locales // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_NewsListEntity implements _NewsListEntity {
  const _$_NewsListEntity(
      {required final List<NewsEntity> list,
      required this.updateTime,
      required final List<String> currencies,
      required final List<String> locales,
      required this.nextPage})
      : _list = list,
        _currencies = currencies,
        _locales = locales;

  final List<NewsEntity> _list;
  @override
  List<NewsEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final DateTime updateTime;
  final List<String> _currencies;
  @override
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<String> _locales;
  @override
  List<String> get locales {
    if (_locales is EqualUnmodifiableListView) return _locales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locales);
  }

  @override
  final int? nextPage;

  @override
  String toString() {
    return 'NewsListEntity(list: $list, updateTime: $updateTime, currencies: $currencies, locales: $locales, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsListEntity &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.updateTime, updateTime) || other.updateTime == updateTime) &&
            const DeepCollectionEquality().equals(other._currencies, _currencies) &&
            const DeepCollectionEquality().equals(other._locales, _locales) &&
            (identical(other.nextPage, nextPage) || other.nextPage == nextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      updateTime,
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_locales),
      nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsListEntityCopyWith<_$_NewsListEntity> get copyWith =>
      __$$_NewsListEntityCopyWithImpl<_$_NewsListEntity>(this, _$identity);
}

abstract class _NewsListEntity implements NewsListEntity {
  const factory _NewsListEntity(
      {required final List<NewsEntity> list,
      required final DateTime updateTime,
      required final List<String> currencies,
      required final List<String> locales,
      required final int? nextPage}) = _$_NewsListEntity;

  @override
  List<NewsEntity> get list;
  @override
  DateTime get updateTime;
  @override
  List<String> get currencies;
  @override
  List<String> get locales;
  @override
  int? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$_NewsListEntityCopyWith<_$_NewsListEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get sourceTitle => throw _privateConstructorUsedError;
  String get sourceUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntityCopyWith<NewsEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call(
      {String title,
      String description,
      String? image,
      String sourceTitle,
      String sourceUrl,
      String url,
      DateTime createdTime,
      List<String> currencies});
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity> implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = freezed,
    Object? sourceTitle = null,
    Object? sourceUrl = null,
    Object? url = null,
    Object? createdTime = null,
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceTitle: null == sourceTitle
          ? _value.sourceTitle
          : sourceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsEntityCopyWith<$Res> implements $NewsEntityCopyWith<$Res> {
  factory _$$_NewsEntityCopyWith(_$_NewsEntity value, $Res Function(_$_NewsEntity) then) =
      __$$_NewsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String? image,
      String sourceTitle,
      String sourceUrl,
      String url,
      DateTime createdTime,
      List<String> currencies});
}

/// @nodoc
class __$$_NewsEntityCopyWithImpl<$Res> extends _$NewsEntityCopyWithImpl<$Res, _$_NewsEntity>
    implements _$$_NewsEntityCopyWith<$Res> {
  __$$_NewsEntityCopyWithImpl(_$_NewsEntity _value, $Res Function(_$_NewsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = freezed,
    Object? sourceTitle = null,
    Object? sourceUrl = null,
    Object? url = null,
    Object? createdTime = null,
    Object? currencies = null,
  }) {
    return _then(_$_NewsEntity(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceTitle: null == sourceTitle
          ? _value.sourceTitle
          : sourceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_NewsEntity implements _NewsEntity {
  const _$_NewsEntity(
      {required this.title,
      required this.description,
      this.image,
      required this.sourceTitle,
      required this.sourceUrl,
      required this.url,
      required this.createdTime,
      required final List<String> currencies})
      : _currencies = currencies;

  @override
  final String title;
  @override
  final String description;
  @override
  final String? image;
  @override
  final String sourceTitle;
  @override
  final String sourceUrl;
  @override
  final String url;
  @override
  final DateTime createdTime;
  final List<String> _currencies;
  @override
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'NewsEntity(title: $title, description: $description, image: $image, sourceTitle: $sourceTitle, sourceUrl: $sourceUrl, url: $url, createdTime: $createdTime, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsEntity &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sourceTitle, sourceTitle) || other.sourceTitle == sourceTitle) &&
            (identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdTime, createdTime) || other.createdTime == createdTime) &&
            const DeepCollectionEquality().equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, image, sourceTitle, sourceUrl,
      url, createdTime, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsEntityCopyWith<_$_NewsEntity> get copyWith =>
      __$$_NewsEntityCopyWithImpl<_$_NewsEntity>(this, _$identity);
}

abstract class _NewsEntity implements NewsEntity {
  const factory _NewsEntity(
      {required final String title,
      required final String description,
      final String? image,
      required final String sourceTitle,
      required final String sourceUrl,
      required final String url,
      required final DateTime createdTime,
      required final List<String> currencies}) = _$_NewsEntity;

  @override
  String get title;
  @override
  String get description;
  @override
  String? get image;
  @override
  String get sourceTitle;
  @override
  String get sourceUrl;
  @override
  String get url;
  @override
  DateTime get createdTime;
  @override
  List<String> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_NewsEntityCopyWith<_$_NewsEntity> get copyWith => throw _privateConstructorUsedError;
}
