// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gecko_coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeckoCoinDTO _$$_GeckoCoinDTOFromJson(Map<String, dynamic> json) => _$_GeckoCoinDTO(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      marketCap: (json['market_cap'] as num?)?.toDouble(),
      marketCapRank: (json['market_cap_rank'] as num?)?.toDouble(),
      fullyDilutedValuation: (json['fully_diluted_valuation'] as num?)?.toDouble(),
      totalVolume: (json['total_volume'] as num).toDouble(),
      high_24h: (json['high_24h'] as num?)?.toDouble(),
      low_24h: (json['low_24h'] as num?)?.toDouble(),
      priceChange_24h: (json['price_change_24h'] as num?)?.toDouble(),
      priceChangePercentage_24h: (json['price_change_percentage_24h'] as num?)?.toDouble(),
      marketCapChange_24h: (json['market_cap_change_24h'] as num?)?.toDouble(),
      marketCapChangePercentage_24h: (json['market_cap_change_percentage_24h'] as num?)?.toDouble(),
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

Map<String, dynamic> _$$_GeckoCoinDTOToJson(_$_GeckoCoinDTO instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'fully_diluted_valuation': instance.fullyDilutedValuation,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high_24h,
      'low_24h': instance.low_24h,
      'price_change_24h': instance.priceChange_24h,
      'price_change_percentage_24h': instance.priceChangePercentage_24h,
      'market_cap_change_24h': instance.marketCapChange_24h,
      'market_cap_change_percentage_24h': instance.marketCapChangePercentage_24h,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
      'ath': instance.ath,
      'ath_change_percentage': instance.athChangePercentage,
      'ath_date': instance.athDate,
      'atl': instance.atl,
      'atl_change_percentage': instance.atlChangePercentage,
      'atl_date': instance.atlDate,
      'roi': instance.roi?.toJson(),
      'last_updated': instance.lastUpdated,
    };

_$_GeckoRoiDTO _$$_GeckoRoiDTOFromJson(Map<String, dynamic> json) => _$_GeckoRoiDTO(
      times: (json['times'] as num).toDouble(),
      currency: json['currency'] as String,
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GeckoRoiDTOToJson(_$_GeckoRoiDTO instance) => <String, dynamic>{
      'times': instance.times,
      'currency': instance.currency,
      'percentage': instance.percentage,
    };
