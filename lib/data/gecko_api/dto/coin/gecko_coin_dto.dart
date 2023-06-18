import 'package:freezed_annotation/freezed_annotation.dart';

part 'gecko_coin_dto.freezed.dart';
part 'gecko_coin_dto.g.dart';

@freezed
class GeckoCoinDTO with _$GeckoCoinDTO {
  const factory GeckoCoinDTO({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'market_cap') required double? marketCap,
    @JsonKey(name: 'market_cap_rank') required double? marketCapRank,
    @JsonKey(name: 'fully_diluted_valuation') required double? fullyDilutedValuation,
    @JsonKey(name: 'total_volume') required double totalVolume,
    required double? high_24h,
    required double? low_24h,
    @JsonKey(name: 'price_change_24h') required double? priceChange_24h,
    @JsonKey(name: 'price_change_percentage_24h') required double? priceChangePercentage_24h,
    @JsonKey(name: 'market_cap_change_24h') required double? marketCapChange_24h,
    @JsonKey(name: 'market_cap_change_percentage_24h')
    required double? marketCapChangePercentage_24h,
    @JsonKey(name: 'circulating_supply') required double? circulatingSupply,
    @JsonKey(name: 'total_supply') required double? totalSupply,
    @JsonKey(name: 'max_supply') required double? maxSupply,
    required double ath,
    @JsonKey(name: 'ath_change_percentage') required double athChangePercentage,
    @JsonKey(name: 'ath_date') required String athDate,
    required double atl,
    @JsonKey(name: 'atl_change_percentage') required double atlChangePercentage,
    @JsonKey(name: 'atl_date') required String atlDate,
    required GeckoRoiDTO? roi,
    @JsonKey(name: 'last_updated') required String lastUpdated,
  }) = _GeckoCoinDTO;

  factory GeckoCoinDTO.fromJson(Map<String, Object?> json) => _$GeckoCoinDTOFromJson(json);
}

@freezed
class GeckoRoiDTO with _$GeckoRoiDTO {
  const factory GeckoRoiDTO({
    required double times,
    required String currency,
    required double percentage,
  }) = _GeckoRoiDTO;

  factory GeckoRoiDTO.fromJson(Map<String, Object?> json) => _$GeckoRoiDTOFromJson(json);
}
