// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gecko_market_coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeckoMarketCoinDTO _$GeckoMarketCoinDTOFromJson(Map<String, dynamic> json) => GeckoMarketCoinDTO(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      marketCap: (json['market_cap'] as num).toDouble(),
      marketCapRank: (json['market_cap_rank'] as num).toDouble(),
      fullyDilutedValuation: (json['fully_diluted_valuation'] as num?)?.toDouble(),
      totalVolume: (json['total_volume'] as num).toDouble(),
      high_24h: (json['high_24h'] as num).toDouble(),
      low_24h: (json['low_24h'] as num).toDouble(),
      priceChange_24h: (json['price_change_24h'] as num).toDouble(),
      priceChangePercentage_24h: (json['price_change_percentage_24h'] as num).toDouble(),
      marketCapChange_24h: (json['market_cap_change_24h'] as num).toDouble(),
      marketCapChangePercentage_24h: (json['market_cap_change_percentage_24h'] as num).toDouble(),
      circulatingSupply: (json['circulating_supply'] as num?)?.toDouble(),
      totalSupply: (json['total_supply'] as num?)?.toDouble(),
      maxSupply: (json['max_supply'] as num?)?.toDouble(),
      ath: (json['ath'] as num).toDouble(),
      athChangePercentage: (json['ath_change_percentage'] as num).toDouble(),
      athDate: json['ath_date'] as String,
      atl: (json['atl'] as num).toDouble(),
      atlChangePercentage: (json['atl_change_percentage'] as num).toDouble(),
      atlDate: json['atl_date'] as String,
      roi: json['roi'] == null ? null : GeckoRoiDTO.fromJson(json['roi'] as Map<String, dynamic>),
      lastUpdated: json['last_updated'] as String,
    );

GeckoRoiDTO _$GeckoRoiDTOFromJson(Map<String, dynamic> json) => GeckoRoiDTO(
      times: (json['times'] as num).toDouble(),
      currency: json['currency'] as String,
      percentage: (json['percentage'] as num).toDouble(),
    );
