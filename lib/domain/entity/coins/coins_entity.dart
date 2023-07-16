import 'package:freezed_annotation/freezed_annotation.dart';
part 'coins_entity.freezed.dart';
part 'coins_entity.g.dart';

@freezed
class CoinsEntity with _$CoinsEntity {
  const factory CoinsEntity({
    required List<CoinEntity> list,
    required DateTime updateTime,
  }) = _CoinsEntity;

  factory CoinsEntity.fromJson(Map<String, Object?> json) => _$CoinsEntityFromJson(json);
}

@freezed
class CoinEntity with _$CoinEntity {
  const factory CoinEntity({
    //market data
    required String symbol,
    required String image,
    required double currentPrice,
    required double marketCap,
    required double priceChangePercentage24H,
    required double? marketCapRank,
    required double? circulatingSupply,
    required double? totalSupply,
    required double? maxSupply,
    //user data
    required List<PaymentEntity> history,
  }) = _CoinEntity;

  factory CoinEntity.fromJson(Map<String, Object?> json) => _$CoinEntityFromJson(json);
}

@freezed
class PaymentEntity with _$PaymentEntity {
  const factory PaymentEntity({
    required String symbol,
    required DateTime dateTime,
    required String type,
    required double amount,
    required double numberOfCoins,
  }) = _PaymentEntity;

  factory PaymentEntity.fromJson(Map<String, Object?> json) => _$PaymentEntityFromJson(json);
}

class PaymentType {
  static const String sell = 'sell';
  static const String buy = 'buy';
}
