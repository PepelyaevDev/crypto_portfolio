// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cryptopanic_news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptopanicNewsResponse _$CryptopanicNewsResponseFromJson(Map<String, dynamic> json) {
  return _CryptopanicNewsResponse.fromJson(json);
}

/// @nodoc
mixin _$CryptopanicNewsResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<CryptopanicNewsDTO> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptopanicNewsResponseCopyWith<CryptopanicNewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptopanicNewsResponseCopyWith<$Res> {
  factory $CryptopanicNewsResponseCopyWith(
          CryptopanicNewsResponse value, $Res Function(CryptopanicNewsResponse) then) =
      _$CryptopanicNewsResponseCopyWithImpl<$Res, CryptopanicNewsResponse>;
  @useResult
  $Res call({int count, String? next, String? previous, List<CryptopanicNewsDTO> results});
}

/// @nodoc
class _$CryptopanicNewsResponseCopyWithImpl<$Res, $Val extends CryptopanicNewsResponse>
    implements $CryptopanicNewsResponseCopyWith<$Res> {
  _$CryptopanicNewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CryptopanicNewsDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptopanicNewsResponseCopyWith<$Res>
    implements $CryptopanicNewsResponseCopyWith<$Res> {
  factory _$$_CryptopanicNewsResponseCopyWith(
          _$_CryptopanicNewsResponse value, $Res Function(_$_CryptopanicNewsResponse) then) =
      __$$_CryptopanicNewsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? next, String? previous, List<CryptopanicNewsDTO> results});
}

/// @nodoc
class __$$_CryptopanicNewsResponseCopyWithImpl<$Res>
    extends _$CryptopanicNewsResponseCopyWithImpl<$Res, _$_CryptopanicNewsResponse>
    implements _$$_CryptopanicNewsResponseCopyWith<$Res> {
  __$$_CryptopanicNewsResponseCopyWithImpl(
      _$_CryptopanicNewsResponse _value, $Res Function(_$_CryptopanicNewsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_CryptopanicNewsResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CryptopanicNewsDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptopanicNewsResponse implements _CryptopanicNewsResponse {
  const _$_CryptopanicNewsResponse(
      {required this.count,
      this.next,
      this.previous,
      required final List<CryptopanicNewsDTO> results})
      : _results = results;

  factory _$_CryptopanicNewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CryptopanicNewsResponseFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<CryptopanicNewsDTO> _results;
  @override
  List<CryptopanicNewsDTO> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CryptopanicNewsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptopanicNewsResponse &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) || other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, next, previous, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptopanicNewsResponseCopyWith<_$_CryptopanicNewsResponse> get copyWith =>
      __$$_CryptopanicNewsResponseCopyWithImpl<_$_CryptopanicNewsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptopanicNewsResponseToJson(
      this,
    );
  }
}

abstract class _CryptopanicNewsResponse implements CryptopanicNewsResponse {
  const factory _CryptopanicNewsResponse(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<CryptopanicNewsDTO> results}) = _$_CryptopanicNewsResponse;

  factory _CryptopanicNewsResponse.fromJson(Map<String, dynamic> json) =
      _$_CryptopanicNewsResponse.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<CryptopanicNewsDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CryptopanicNewsResponseCopyWith<_$_CryptopanicNewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptopanicNewsDTO _$CryptopanicNewsDTOFromJson(Map<String, dynamic> json) {
  return _CryptopanicNewsDTO.fromJson(json);
}

/// @nodoc
mixin _$CryptopanicNewsDTO {
  String get kind => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  CryptopanicSourceDTO get source => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String get publishedAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<CryptopanicCurrenciesDTO>? get currencies => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  CryptopanicVotesDTO get votes => throw _privateConstructorUsedError;
  CryptopanicMetadataDTO? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptopanicNewsDTOCopyWith<CryptopanicNewsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptopanicNewsDTOCopyWith<$Res> {
  factory $CryptopanicNewsDTOCopyWith(
          CryptopanicNewsDTO value, $Res Function(CryptopanicNewsDTO) then) =
      _$CryptopanicNewsDTOCopyWithImpl<$Res, CryptopanicNewsDTO>;
  @useResult
  $Res call(
      {String kind,
      String? domain,
      CryptopanicSourceDTO source,
      String title,
      @JsonKey(name: 'published_at') String publishedAt,
      String? slug,
      List<CryptopanicCurrenciesDTO>? currencies,
      int id,
      String url,
      @JsonKey(name: 'created_at') String createdAt,
      CryptopanicVotesDTO votes,
      CryptopanicMetadataDTO? metadata});

  $CryptopanicSourceDTOCopyWith<$Res> get source;
  $CryptopanicVotesDTOCopyWith<$Res> get votes;
  $CryptopanicMetadataDTOCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$CryptopanicNewsDTOCopyWithImpl<$Res, $Val extends CryptopanicNewsDTO>
    implements $CryptopanicNewsDTOCopyWith<$Res> {
  _$CryptopanicNewsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? domain = freezed,
    Object? source = null,
    Object? title = null,
    Object? publishedAt = null,
    Object? slug = freezed,
    Object? currencies = freezed,
    Object? id = null,
    Object? url = null,
    Object? createdAt = null,
    Object? votes = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CryptopanicSourceDTO,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      currencies: freezed == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CryptopanicCurrenciesDTO>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as CryptopanicVotesDTO,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as CryptopanicMetadataDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptopanicSourceDTOCopyWith<$Res> get source {
    return $CryptopanicSourceDTOCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptopanicVotesDTOCopyWith<$Res> get votes {
    return $CryptopanicVotesDTOCopyWith<$Res>(_value.votes, (value) {
      return _then(_value.copyWith(votes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptopanicMetadataDTOCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $CryptopanicMetadataDTOCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CryptopanicNewsDTOCopyWith<$Res> implements $CryptopanicNewsDTOCopyWith<$Res> {
  factory _$$_CryptopanicNewsDTOCopyWith(
          _$_CryptopanicNewsDTO value, $Res Function(_$_CryptopanicNewsDTO) then) =
      __$$_CryptopanicNewsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String? domain,
      CryptopanicSourceDTO source,
      String title,
      @JsonKey(name: 'published_at') String publishedAt,
      String? slug,
      List<CryptopanicCurrenciesDTO>? currencies,
      int id,
      String url,
      @JsonKey(name: 'created_at') String createdAt,
      CryptopanicVotesDTO votes,
      CryptopanicMetadataDTO? metadata});

  @override
  $CryptopanicSourceDTOCopyWith<$Res> get source;
  @override
  $CryptopanicVotesDTOCopyWith<$Res> get votes;
  @override
  $CryptopanicMetadataDTOCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$_CryptopanicNewsDTOCopyWithImpl<$Res>
    extends _$CryptopanicNewsDTOCopyWithImpl<$Res, _$_CryptopanicNewsDTO>
    implements _$$_CryptopanicNewsDTOCopyWith<$Res> {
  __$$_CryptopanicNewsDTOCopyWithImpl(
      _$_CryptopanicNewsDTO _value, $Res Function(_$_CryptopanicNewsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? domain = freezed,
    Object? source = null,
    Object? title = null,
    Object? publishedAt = null,
    Object? slug = freezed,
    Object? currencies = freezed,
    Object? id = null,
    Object? url = null,
    Object? createdAt = null,
    Object? votes = null,
    Object? metadata = freezed,
  }) {
    return _then(_$_CryptopanicNewsDTO(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CryptopanicSourceDTO,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      currencies: freezed == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CryptopanicCurrenciesDTO>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as CryptopanicVotesDTO,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as CryptopanicMetadataDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptopanicNewsDTO implements _CryptopanicNewsDTO {
  const _$_CryptopanicNewsDTO(
      {required this.kind,
      this.domain,
      required this.source,
      required this.title,
      @JsonKey(name: 'published_at') required this.publishedAt,
      this.slug,
      final List<CryptopanicCurrenciesDTO>? currencies,
      required this.id,
      required this.url,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.votes,
      this.metadata})
      : _currencies = currencies;

  factory _$_CryptopanicNewsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CryptopanicNewsDTOFromJson(json);

  @override
  final String kind;
  @override
  final String? domain;
  @override
  final CryptopanicSourceDTO source;
  @override
  final String title;
  @override
  @JsonKey(name: 'published_at')
  final String publishedAt;
  @override
  final String? slug;
  final List<CryptopanicCurrenciesDTO>? _currencies;
  @override
  List<CryptopanicCurrenciesDTO>? get currencies {
    final value = _currencies;
    if (value == null) return null;
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int id;
  @override
  final String url;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final CryptopanicVotesDTO votes;
  @override
  final CryptopanicMetadataDTO? metadata;

  @override
  String toString() {
    return 'CryptopanicNewsDTO(kind: $kind, domain: $domain, source: $source, title: $title, publishedAt: $publishedAt, slug: $slug, currencies: $currencies, id: $id, url: $url, createdAt: $createdAt, votes: $votes, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptopanicNewsDTO &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._currencies, _currencies) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.votes, votes) || other.votes == votes) &&
            (identical(other.metadata, metadata) || other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, domain, source, title, publishedAt, slug,
      const DeepCollectionEquality().hash(_currencies), id, url, createdAt, votes, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptopanicNewsDTOCopyWith<_$_CryptopanicNewsDTO> get copyWith =>
      __$$_CryptopanicNewsDTOCopyWithImpl<_$_CryptopanicNewsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptopanicNewsDTOToJson(
      this,
    );
  }
}

abstract class _CryptopanicNewsDTO implements CryptopanicNewsDTO {
  const factory _CryptopanicNewsDTO(
      {required final String kind,
      final String? domain,
      required final CryptopanicSourceDTO source,
      required final String title,
      @JsonKey(name: 'published_at') required final String publishedAt,
      final String? slug,
      final List<CryptopanicCurrenciesDTO>? currencies,
      required final int id,
      required final String url,
      @JsonKey(name: 'created_at') required final String createdAt,
      required final CryptopanicVotesDTO votes,
      final CryptopanicMetadataDTO? metadata}) = _$_CryptopanicNewsDTO;

  factory _CryptopanicNewsDTO.fromJson(Map<String, dynamic> json) = _$_CryptopanicNewsDTO.fromJson;

  @override
  String get kind;
  @override
  String? get domain;
  @override
  CryptopanicSourceDTO get source;
  @override
  String get title;
  @override
  @JsonKey(name: 'published_at')
  String get publishedAt;
  @override
  String? get slug;
  @override
  List<CryptopanicCurrenciesDTO>? get currencies;
  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  CryptopanicVotesDTO get votes;
  @override
  CryptopanicMetadataDTO? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_CryptopanicNewsDTOCopyWith<_$_CryptopanicNewsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptopanicSourceDTO _$CryptopanicSourceDTOFromJson(Map<String, dynamic> json) {
  return _CryptopanicSourceDTO.fromJson(json);
}

/// @nodoc
mixin _$CryptopanicSourceDTO {
  String get title => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptopanicSourceDTOCopyWith<CryptopanicSourceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptopanicSourceDTOCopyWith<$Res> {
  factory $CryptopanicSourceDTOCopyWith(
          CryptopanicSourceDTO value, $Res Function(CryptopanicSourceDTO) then) =
      _$CryptopanicSourceDTOCopyWithImpl<$Res, CryptopanicSourceDTO>;
  @useResult
  $Res call({String title, String region, String domain, String? path});
}

/// @nodoc
class _$CryptopanicSourceDTOCopyWithImpl<$Res, $Val extends CryptopanicSourceDTO>
    implements $CryptopanicSourceDTOCopyWith<$Res> {
  _$CryptopanicSourceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? region = null,
    Object? domain = null,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptopanicSourceDTOCopyWith<$Res>
    implements $CryptopanicSourceDTOCopyWith<$Res> {
  factory _$$_CryptopanicSourceDTOCopyWith(
          _$_CryptopanicSourceDTO value, $Res Function(_$_CryptopanicSourceDTO) then) =
      __$$_CryptopanicSourceDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String region, String domain, String? path});
}

/// @nodoc
class __$$_CryptopanicSourceDTOCopyWithImpl<$Res>
    extends _$CryptopanicSourceDTOCopyWithImpl<$Res, _$_CryptopanicSourceDTO>
    implements _$$_CryptopanicSourceDTOCopyWith<$Res> {
  __$$_CryptopanicSourceDTOCopyWithImpl(
      _$_CryptopanicSourceDTO _value, $Res Function(_$_CryptopanicSourceDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? region = null,
    Object? domain = null,
    Object? path = freezed,
  }) {
    return _then(_$_CryptopanicSourceDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptopanicSourceDTO implements _CryptopanicSourceDTO {
  const _$_CryptopanicSourceDTO(
      {required this.title, required this.region, required this.domain, this.path});

  factory _$_CryptopanicSourceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CryptopanicSourceDTOFromJson(json);

  @override
  final String title;
  @override
  final String region;
  @override
  final String domain;
  @override
  final String? path;

  @override
  String toString() {
    return 'CryptopanicSourceDTO(title: $title, region: $region, domain: $domain, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptopanicSourceDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, region, domain, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptopanicSourceDTOCopyWith<_$_CryptopanicSourceDTO> get copyWith =>
      __$$_CryptopanicSourceDTOCopyWithImpl<_$_CryptopanicSourceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptopanicSourceDTOToJson(
      this,
    );
  }
}

abstract class _CryptopanicSourceDTO implements CryptopanicSourceDTO {
  const factory _CryptopanicSourceDTO(
      {required final String title,
      required final String region,
      required final String domain,
      final String? path}) = _$_CryptopanicSourceDTO;

  factory _CryptopanicSourceDTO.fromJson(Map<String, dynamic> json) =
      _$_CryptopanicSourceDTO.fromJson;

  @override
  String get title;
  @override
  String get region;
  @override
  String get domain;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$_CryptopanicSourceDTOCopyWith<_$_CryptopanicSourceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptopanicCurrenciesDTO _$CryptopanicCurrenciesDTOFromJson(Map<String, dynamic> json) {
  return _CryptopanicCurrenciesDTO.fromJson(json);
}

/// @nodoc
mixin _$CryptopanicCurrenciesDTO {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptopanicCurrenciesDTOCopyWith<CryptopanicCurrenciesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptopanicCurrenciesDTOCopyWith<$Res> {
  factory $CryptopanicCurrenciesDTOCopyWith(
          CryptopanicCurrenciesDTO value, $Res Function(CryptopanicCurrenciesDTO) then) =
      _$CryptopanicCurrenciesDTOCopyWithImpl<$Res, CryptopanicCurrenciesDTO>;
  @useResult
  $Res call({String code, String title, String? slug, String? url});
}

/// @nodoc
class _$CryptopanicCurrenciesDTOCopyWithImpl<$Res, $Val extends CryptopanicCurrenciesDTO>
    implements $CryptopanicCurrenciesDTOCopyWith<$Res> {
  _$CryptopanicCurrenciesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? slug = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptopanicCurrenciesDTOCopyWith<$Res>
    implements $CryptopanicCurrenciesDTOCopyWith<$Res> {
  factory _$$_CryptopanicCurrenciesDTOCopyWith(
          _$_CryptopanicCurrenciesDTO value, $Res Function(_$_CryptopanicCurrenciesDTO) then) =
      __$$_CryptopanicCurrenciesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String title, String? slug, String? url});
}

/// @nodoc
class __$$_CryptopanicCurrenciesDTOCopyWithImpl<$Res>
    extends _$CryptopanicCurrenciesDTOCopyWithImpl<$Res, _$_CryptopanicCurrenciesDTO>
    implements _$$_CryptopanicCurrenciesDTOCopyWith<$Res> {
  __$$_CryptopanicCurrenciesDTOCopyWithImpl(
      _$_CryptopanicCurrenciesDTO _value, $Res Function(_$_CryptopanicCurrenciesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? slug = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_CryptopanicCurrenciesDTO(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptopanicCurrenciesDTO implements _CryptopanicCurrenciesDTO {
  const _$_CryptopanicCurrenciesDTO({required this.code, required this.title, this.slug, this.url});

  factory _$_CryptopanicCurrenciesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CryptopanicCurrenciesDTOFromJson(json);

  @override
  final String code;
  @override
  final String title;
  @override
  final String? slug;
  @override
  final String? url;

  @override
  String toString() {
    return 'CryptopanicCurrenciesDTO(code: $code, title: $title, slug: $slug, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptopanicCurrenciesDTO &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, title, slug, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptopanicCurrenciesDTOCopyWith<_$_CryptopanicCurrenciesDTO> get copyWith =>
      __$$_CryptopanicCurrenciesDTOCopyWithImpl<_$_CryptopanicCurrenciesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptopanicCurrenciesDTOToJson(
      this,
    );
  }
}

abstract class _CryptopanicCurrenciesDTO implements CryptopanicCurrenciesDTO {
  const factory _CryptopanicCurrenciesDTO(
      {required final String code,
      required final String title,
      final String? slug,
      final String? url}) = _$_CryptopanicCurrenciesDTO;

  factory _CryptopanicCurrenciesDTO.fromJson(Map<String, dynamic> json) =
      _$_CryptopanicCurrenciesDTO.fromJson;

  @override
  String get code;
  @override
  String get title;
  @override
  String? get slug;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_CryptopanicCurrenciesDTOCopyWith<_$_CryptopanicCurrenciesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptopanicVotesDTO _$CryptopanicVotesDTOFromJson(Map<String, dynamic> json) {
  return _CryptopanicVotesDTO.fromJson(json);
}

/// @nodoc
mixin _$CryptopanicVotesDTO {
  int get negative => throw _privateConstructorUsedError;
  int get positive => throw _privateConstructorUsedError;
  int get important => throw _privateConstructorUsedError;
  int get liked => throw _privateConstructorUsedError;
  int get disliked => throw _privateConstructorUsedError;
  int get lol => throw _privateConstructorUsedError;
  int get toxic => throw _privateConstructorUsedError;
  int get saved => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptopanicVotesDTOCopyWith<CryptopanicVotesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptopanicVotesDTOCopyWith<$Res> {
  factory $CryptopanicVotesDTOCopyWith(
          CryptopanicVotesDTO value, $Res Function(CryptopanicVotesDTO) then) =
      _$CryptopanicVotesDTOCopyWithImpl<$Res, CryptopanicVotesDTO>;
  @useResult
  $Res call(
      {int negative,
      int positive,
      int important,
      int liked,
      int disliked,
      int lol,
      int toxic,
      int saved,
      int comments});
}

/// @nodoc
class _$CryptopanicVotesDTOCopyWithImpl<$Res, $Val extends CryptopanicVotesDTO>
    implements $CryptopanicVotesDTOCopyWith<$Res> {
  _$CryptopanicVotesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? negative = null,
    Object? positive = null,
    Object? important = null,
    Object? liked = null,
    Object? disliked = null,
    Object? lol = null,
    Object? toxic = null,
    Object? saved = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      negative: null == negative
          ? _value.negative
          : negative // ignore: cast_nullable_to_non_nullable
              as int,
      positive: null == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as int,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as int,
      disliked: null == disliked
          ? _value.disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as int,
      lol: null == lol
          ? _value.lol
          : lol // ignore: cast_nullable_to_non_nullable
              as int,
      toxic: null == toxic
          ? _value.toxic
          : toxic // ignore: cast_nullable_to_non_nullable
              as int,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptopanicVotesDTOCopyWith<$Res> implements $CryptopanicVotesDTOCopyWith<$Res> {
  factory _$$_CryptopanicVotesDTOCopyWith(
          _$_CryptopanicVotesDTO value, $Res Function(_$_CryptopanicVotesDTO) then) =
      __$$_CryptopanicVotesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int negative,
      int positive,
      int important,
      int liked,
      int disliked,
      int lol,
      int toxic,
      int saved,
      int comments});
}

/// @nodoc
class __$$_CryptopanicVotesDTOCopyWithImpl<$Res>
    extends _$CryptopanicVotesDTOCopyWithImpl<$Res, _$_CryptopanicVotesDTO>
    implements _$$_CryptopanicVotesDTOCopyWith<$Res> {
  __$$_CryptopanicVotesDTOCopyWithImpl(
      _$_CryptopanicVotesDTO _value, $Res Function(_$_CryptopanicVotesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? negative = null,
    Object? positive = null,
    Object? important = null,
    Object? liked = null,
    Object? disliked = null,
    Object? lol = null,
    Object? toxic = null,
    Object? saved = null,
    Object? comments = null,
  }) {
    return _then(_$_CryptopanicVotesDTO(
      negative: null == negative
          ? _value.negative
          : negative // ignore: cast_nullable_to_non_nullable
              as int,
      positive: null == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as int,
      important: null == important
          ? _value.important
          : important // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as int,
      disliked: null == disliked
          ? _value.disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as int,
      lol: null == lol
          ? _value.lol
          : lol // ignore: cast_nullable_to_non_nullable
              as int,
      toxic: null == toxic
          ? _value.toxic
          : toxic // ignore: cast_nullable_to_non_nullable
              as int,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptopanicVotesDTO implements _CryptopanicVotesDTO {
  const _$_CryptopanicVotesDTO(
      {required this.negative,
      required this.positive,
      required this.important,
      required this.liked,
      required this.disliked,
      required this.lol,
      required this.toxic,
      required this.saved,
      required this.comments});

  factory _$_CryptopanicVotesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CryptopanicVotesDTOFromJson(json);

  @override
  final int negative;
  @override
  final int positive;
  @override
  final int important;
  @override
  final int liked;
  @override
  final int disliked;
  @override
  final int lol;
  @override
  final int toxic;
  @override
  final int saved;
  @override
  final int comments;

  @override
  String toString() {
    return 'CryptopanicVotesDTO(negative: $negative, positive: $positive, important: $important, liked: $liked, disliked: $disliked, lol: $lol, toxic: $toxic, saved: $saved, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptopanicVotesDTO &&
            (identical(other.negative, negative) || other.negative == negative) &&
            (identical(other.positive, positive) || other.positive == positive) &&
            (identical(other.important, important) || other.important == important) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.disliked, disliked) || other.disliked == disliked) &&
            (identical(other.lol, lol) || other.lol == lol) &&
            (identical(other.toxic, toxic) || other.toxic == toxic) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.comments, comments) || other.comments == comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, negative, positive, important, liked, disliked, lol, toxic, saved, comments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptopanicVotesDTOCopyWith<_$_CryptopanicVotesDTO> get copyWith =>
      __$$_CryptopanicVotesDTOCopyWithImpl<_$_CryptopanicVotesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptopanicVotesDTOToJson(
      this,
    );
  }
}

abstract class _CryptopanicVotesDTO implements CryptopanicVotesDTO {
  const factory _CryptopanicVotesDTO(
      {required final int negative,
      required final int positive,
      required final int important,
      required final int liked,
      required final int disliked,
      required final int lol,
      required final int toxic,
      required final int saved,
      required final int comments}) = _$_CryptopanicVotesDTO;

  factory _CryptopanicVotesDTO.fromJson(Map<String, dynamic> json) =
      _$_CryptopanicVotesDTO.fromJson;

  @override
  int get negative;
  @override
  int get positive;
  @override
  int get important;
  @override
  int get liked;
  @override
  int get disliked;
  @override
  int get lol;
  @override
  int get toxic;
  @override
  int get saved;
  @override
  int get comments;
  @override
  @JsonKey(ignore: true)
  _$$_CryptopanicVotesDTOCopyWith<_$_CryptopanicVotesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptopanicMetadataDTO _$CryptopanicMetadataDTOFromJson(Map<String, dynamic> json) {
  return _CryptopanicMetadataDTO.fromJson(json);
}

/// @nodoc
mixin _$CryptopanicMetadataDTO {
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptopanicMetadataDTOCopyWith<CryptopanicMetadataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptopanicMetadataDTOCopyWith<$Res> {
  factory $CryptopanicMetadataDTOCopyWith(
          CryptopanicMetadataDTO value, $Res Function(CryptopanicMetadataDTO) then) =
      _$CryptopanicMetadataDTOCopyWithImpl<$Res, CryptopanicMetadataDTO>;
  @useResult
  $Res call({String? image, String? description});
}

/// @nodoc
class _$CryptopanicMetadataDTOCopyWithImpl<$Res, $Val extends CryptopanicMetadataDTO>
    implements $CryptopanicMetadataDTOCopyWith<$Res> {
  _$CryptopanicMetadataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptopanicMetadataDTOCopyWith<$Res>
    implements $CryptopanicMetadataDTOCopyWith<$Res> {
  factory _$$_CryptopanicMetadataDTOCopyWith(
          _$_CryptopanicMetadataDTO value, $Res Function(_$_CryptopanicMetadataDTO) then) =
      __$$_CryptopanicMetadataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String? description});
}

/// @nodoc
class __$$_CryptopanicMetadataDTOCopyWithImpl<$Res>
    extends _$CryptopanicMetadataDTOCopyWithImpl<$Res, _$_CryptopanicMetadataDTO>
    implements _$$_CryptopanicMetadataDTOCopyWith<$Res> {
  __$$_CryptopanicMetadataDTOCopyWithImpl(
      _$_CryptopanicMetadataDTO _value, $Res Function(_$_CryptopanicMetadataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CryptopanicMetadataDTO(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptopanicMetadataDTO implements _CryptopanicMetadataDTO {
  const _$_CryptopanicMetadataDTO({this.image, this.description});

  factory _$_CryptopanicMetadataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CryptopanicMetadataDTOFromJson(json);

  @override
  final String? image;
  @override
  final String? description;

  @override
  String toString() {
    return 'CryptopanicMetadataDTO(image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptopanicMetadataDTO &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptopanicMetadataDTOCopyWith<_$_CryptopanicMetadataDTO> get copyWith =>
      __$$_CryptopanicMetadataDTOCopyWithImpl<_$_CryptopanicMetadataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptopanicMetadataDTOToJson(
      this,
    );
  }
}

abstract class _CryptopanicMetadataDTO implements CryptopanicMetadataDTO {
  const factory _CryptopanicMetadataDTO({final String? image, final String? description}) =
      _$_CryptopanicMetadataDTO;

  factory _CryptopanicMetadataDTO.fromJson(Map<String, dynamic> json) =
      _$_CryptopanicMetadataDTO.fromJson;

  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CryptopanicMetadataDTOCopyWith<_$_CryptopanicMetadataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
