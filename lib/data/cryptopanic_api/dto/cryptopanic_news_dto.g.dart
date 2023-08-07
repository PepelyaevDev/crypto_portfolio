// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cryptopanic_news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptopanicNewsResponse _$$_CryptopanicNewsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CryptopanicNewsResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => CryptopanicNewsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CryptopanicNewsResponseToJson(
        _$_CryptopanicNewsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_CryptopanicNewsDTO _$$_CryptopanicNewsDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CryptopanicNewsDTO(
      kind: json['kind'] as String,
      domain: json['domain'] as String?,
      source:
          CryptopanicSourceDTO.fromJson(json['source'] as Map<String, dynamic>),
      title: json['title'] as String,
      publishedAt: json['published_at'] as String,
      slug: json['slug'] as String?,
      currencies: (json['currencies'] as List<dynamic>?)
          ?.map((e) =>
              CryptopanicCurrenciesDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      url: json['url'] as String,
      createdAt: json['created_at'] as String,
      votes:
          CryptopanicVotesDTO.fromJson(json['votes'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : CryptopanicMetadataDTO.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CryptopanicNewsDTOToJson(
        _$_CryptopanicNewsDTO instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'domain': instance.domain,
      'source': instance.source.toJson(),
      'title': instance.title,
      'published_at': instance.publishedAt,
      'slug': instance.slug,
      'currencies': instance.currencies?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'url': instance.url,
      'created_at': instance.createdAt,
      'votes': instance.votes.toJson(),
      'metadata': instance.metadata?.toJson(),
    };

_$_CryptopanicSourceDTO _$$_CryptopanicSourceDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CryptopanicSourceDTO(
      title: json['title'] as String,
      region: json['region'] as String,
      domain: json['domain'] as String,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_CryptopanicSourceDTOToJson(
        _$_CryptopanicSourceDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'region': instance.region,
      'domain': instance.domain,
      'path': instance.path,
    };

_$_CryptopanicCurrenciesDTO _$$_CryptopanicCurrenciesDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CryptopanicCurrenciesDTO(
      code: json['code'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_CryptopanicCurrenciesDTOToJson(
        _$_CryptopanicCurrenciesDTO instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'slug': instance.slug,
      'url': instance.url,
    };

_$_CryptopanicVotesDTO _$$_CryptopanicVotesDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CryptopanicVotesDTO(
      negative: json['negative'] as int,
      positive: json['positive'] as int,
      important: json['important'] as int,
      liked: json['liked'] as int,
      disliked: json['disliked'] as int,
      lol: json['lol'] as int,
      toxic: json['toxic'] as int,
      saved: json['saved'] as int,
      comments: json['comments'] as int,
    );

Map<String, dynamic> _$$_CryptopanicVotesDTOToJson(
        _$_CryptopanicVotesDTO instance) =>
    <String, dynamic>{
      'negative': instance.negative,
      'positive': instance.positive,
      'important': instance.important,
      'liked': instance.liked,
      'disliked': instance.disliked,
      'lol': instance.lol,
      'toxic': instance.toxic,
      'saved': instance.saved,
      'comments': instance.comments,
    };

_$_CryptopanicMetadataDTO _$$_CryptopanicMetadataDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CryptopanicMetadataDTO(
      image: json['image'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_CryptopanicMetadataDTOToJson(
        _$_CryptopanicMetadataDTO instance) =>
    <String, dynamic>{
      'image': instance.image,
      'description': instance.description,
    };
