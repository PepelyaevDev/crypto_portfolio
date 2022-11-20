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
      'coins': instance.coins,
    };
