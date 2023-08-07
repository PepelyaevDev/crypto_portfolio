// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDTO _$$_SearchDTOFromJson(Map<String, dynamic> json) => _$_SearchDTO(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => SearchCoinDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchDTOToJson(_$_SearchDTO instance) =>
    <String, dynamic>{
      'coins': instance.coins.map((e) => e.toJson()).toList(),
    };

_$_SearchCoinDTO _$$_SearchCoinDTOFromJson(Map<String, dynamic> json) =>
    _$_SearchCoinDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      apiSymbol: json['api_symbol'] as String,
      symbol: json['symbol'] as String,
      marketCapRank: json['market_cap_rank'] as int?,
      thumb: json['thumb'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$_SearchCoinDTOToJson(_$_SearchCoinDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'api_symbol': instance.apiSymbol,
      'symbol': instance.symbol,
      'market_cap_rank': instance.marketCapRank,
      'thumb': instance.thumb,
      'large': instance.large,
    };
