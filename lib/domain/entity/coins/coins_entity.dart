import 'package:freezed_annotation/freezed_annotation.dart';
part 'coins_entity.freezed.dart';
part 'coins_entity.g.dart';

@freezed
class CoinsEntity with _$CoinsEntity {
  const factory CoinsEntity({
    required List<CoinEntity> list,
    required DateTime updateTime,
  }) = _CoinsEntity;

  factory CoinsEntity.fromJson(dynamic json) => _$CoinsEntityFromJson(json as Map<String, dynamic>);
}

@freezed
class CoinEntity with _$CoinEntity {
  const factory CoinEntity({
    //market data
    required CoinId id,
    required String image,
    required double currentPrice,
    required double marketCap,
    required double priceChangePercentage24H,
    required double? marketCapRank,
    required double? circulatingSupply,
    required double? totalSupply,
    required double? maxSupply,
    required double? ath,
    required double? athChangePercentage,
    required String? athDate,
    required double? atl,
    required double? atlChangePercentage,
    required String? atlDate,

    //user data
    required List<PaymentEntity> history,
  }) = _CoinEntity;

  factory CoinEntity.fromJson(dynamic json) => _$CoinEntityFromJson(json as Map<String, dynamic>);
}

@freezed
class CoinId with _$CoinId {
  const factory CoinId({
    required String symbol,
    required String name,
  }) = _CoinId;

  factory CoinId.fromJson(dynamic json) => _$CoinIdFromJson(json as Map<String, dynamic>);
}

@freezed
class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required CoinId id,
    required DateTime dateTime,
    required String type,
    required double amount,
    required double numberOfCoins,
  }) = _PaymentEntity;

  factory PaymentEntity.fromJson(dynamic json) =>
      _$PaymentEntityFromJson(json as Map<String, dynamic>);
}

class PaymentType {
  static const String sell = 'sell';
  static const String buy = 'buy';
}
