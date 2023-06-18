import 'package:freezed_annotation/freezed_annotation.dart';

part 'cryptopanic_news_dto.freezed.dart';
part 'cryptopanic_news_dto.g.dart';

@freezed
class CryptopanicNewsResponse with _$CryptopanicNewsResponse {
  const factory CryptopanicNewsResponse({
    required int count,
    String? next,
    String? previous,
    required List<CryptopanicNewsDTO> results,
  }) = _CryptopanicNewsResponse;

  factory CryptopanicNewsResponse.fromJson(Map<String, Object?> json) =>
      _$CryptopanicNewsResponseFromJson(json);
}

@freezed
class CryptopanicNewsDTO with _$CryptopanicNewsDTO {
  const factory CryptopanicNewsDTO({
    required String kind,
    String? domain,
    required CryptopanicSourceDTO source,
    required String title,
    @JsonKey(name: 'published_at') required String publishedAt,
    String? slug,
    List<CryptopanicCurrenciesDTO>? currencies,
    required int id,
    required String url,
    @JsonKey(name: 'created_at') required String createdAt,
    required CryptopanicVotesDTO votes,
    CryptopanicMetadataDTO? metadata,
  }) = _CryptopanicNewsDTO;

  factory CryptopanicNewsDTO.fromJson(Map<String, Object?> json) =>
      _$CryptopanicNewsDTOFromJson(json);
}

@freezed
class CryptopanicSourceDTO with _$CryptopanicSourceDTO {
  const factory CryptopanicSourceDTO({
    required String title,
    required String region,
    required String domain,
    String? path,
  }) = _CryptopanicSourceDTO;

  factory CryptopanicSourceDTO.fromJson(Map<String, Object?> json) =>
      _$CryptopanicSourceDTOFromJson(json);
}

@freezed
class CryptopanicCurrenciesDTO with _$CryptopanicCurrenciesDTO {
  const factory CryptopanicCurrenciesDTO({
    required String code,
    required String title,
    String? slug,
    String? url,
  }) = _CryptopanicCurrenciesDTO;

  factory CryptopanicCurrenciesDTO.fromJson(Map<String, Object?> json) =>
      _$CryptopanicCurrenciesDTOFromJson(json);
}

@freezed
class CryptopanicVotesDTO with _$CryptopanicVotesDTO {
  const factory CryptopanicVotesDTO({
    required int negative,
    required int positive,
    required int important,
    required int liked,
    required int disliked,
    required int lol,
    required int toxic,
    required int saved,
    required int comments,
  }) = _CryptopanicVotesDTO;

  factory CryptopanicVotesDTO.fromJson(Map<String, Object?> json) =>
      _$CryptopanicVotesDTOFromJson(json);
}

@freezed
class CryptopanicMetadataDTO with _$CryptopanicMetadataDTO {
  const factory CryptopanicMetadataDTO({
    String? image,
    String? description,
  }) = _CryptopanicMetadataDTO;

  factory CryptopanicMetadataDTO.fromJson(Map<String, Object?> json) =>
      _$CryptopanicMetadataDTOFromJson(json);
}
