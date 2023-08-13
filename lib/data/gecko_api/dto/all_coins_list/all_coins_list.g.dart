// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_coins_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllCoinsListDto _$$_AllCoinsListDtoFromJson(Map<String, dynamic> json) => _$_AllCoinsListDto(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => CoinParamsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllCoinsListDtoToJson(_$_AllCoinsListDto instance) => <String, dynamic>{
      'coins': instance.coins.map((e) => e.toJson()).toList(),
    };

_$_CoinParamsDto _$$_CoinParamsDtoFromJson(Map<String, dynamic> json) => _$_CoinParamsDto(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$_CoinParamsDtoToJson(_$_CoinParamsDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
    };
