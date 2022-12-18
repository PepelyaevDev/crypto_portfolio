import 'package:json_annotation/json_annotation.dart';

part 'coingecko_market_coins_list.g.dart';

@JsonSerializable(createToJson: false)
class CoingeckoMarketCoinsList {
  const CoingeckoMarketCoinsList({required this.coins});

  factory CoingeckoMarketCoinsList.fromJson(List<dynamic> json) =>
      _$CoingeckoMarketCoinsListFromJson(<String, dynamic>{'coins': json});

  final List<CoingeckoMarketCoin> coins;
}

@JsonSerializable(createToJson: false)
class CoingeckoMarketCoin {
  const CoingeckoMarketCoin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high_24h,
    required this.low_24h,
    required this.priceChange_24h,
    required this.priceChangePercentage_24h,
    required this.marketCapChange_24h,
    required this.marketCapChangePercentage_24h,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    required this.roi,
    required this.lastUpdated,
  });

  factory CoingeckoMarketCoin.fromJson(Map<String, dynamic> json) =>
      _$CoingeckoMarketCoinFromJson(json);

  final String id;
  final String symbol;
  final String name;
  final String image;
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @JsonKey(name: 'market_cap')
  final double marketCap;
  @JsonKey(name: 'market_cap_rank')
  final double marketCapRank;
  @JsonKey(name: 'fully_diluted_valuation')
  final double? fullyDilutedValuation;
  @JsonKey(name: 'total_volume')
  final double totalVolume;
  final double high_24h;
  final double low_24h;
  @JsonKey(name: 'price_change_24h')
  final double priceChange_24h;
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChangePercentage_24h;
  @JsonKey(name: 'market_cap_change_24h')
  final double marketCapChange_24h;
  @JsonKey(name: 'market_cap_change_percentage_24h')
  final double marketCapChangePercentage_24h;
  @JsonKey(name: 'circulating_supply')
  final double? circulatingSupply;
  @JsonKey(name: 'total_supply')
  final double? totalSupply;
  @JsonKey(name: 'max_supply')
  final double? maxSupply;
  final double ath;
  @JsonKey(name: 'ath_change_percentage')
  final double athChangePercentage;
  @JsonKey(name: 'ath_date')
  final String athDate;
  final double atl;
  @JsonKey(name: 'atl_change_percentage')
  final double atlChangePercentage;
  @JsonKey(name: 'atl_date')
  final String atlDate;
  final CoingeckoRoi? roi;
  @JsonKey(name: 'last_updated')
  final String lastUpdated;
}

@JsonSerializable(createToJson: false)
class CoingeckoRoi {
  const CoingeckoRoi({
    required this.times,
    required this.currency,
    required this.percentage,
  });

  factory CoingeckoRoi.fromJson(Map<String, dynamic> json) => _$CoingeckoRoiFromJson(json);

  final double times;
  final String currency;
  final double percentage;
}
