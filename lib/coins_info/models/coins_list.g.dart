// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinsList _$CoinsListFromJson(Map<String, dynamic> json) => CoinsList(
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      coins: (json['coins'] as List<dynamic>)
          .map((e) => Coin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoinsListToJson(CoinsList instance) => <String, dynamic>{
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'coins': instance.coins.map((e) => e.toJson()).toList(),
    };

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
    };
