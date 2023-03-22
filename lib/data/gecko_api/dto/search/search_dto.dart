import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchDTO with _$SearchDTO {
  const factory SearchDTO({
    required List<SearchCoinDTO> coins,

    ///TODO: add
    // required List exchanges,
    // required List icos,
    // required List categories,
    // required List nfts,
  }) = _SearchDTO;

  factory SearchDTO.fromJson(Map<String, Object?> json) => _$SearchDTOFromJson(json);
}

@freezed
class SearchCoinDTO with _$SearchCoinDTO {
  const factory SearchCoinDTO({
    required String id,
    required String name,
    @JsonKey(name: 'api_symbol') required String apiSymbol,
    required String symbol,
    @JsonKey(name: 'market_cap_rank') int? marketCapRank,
    required String thumb,
    required String large,
  }) = _SearchCoinDTO;

  factory SearchCoinDTO.fromJson(Map<String, Object?> json) => _$SearchCoinDTOFromJson(json);
}
