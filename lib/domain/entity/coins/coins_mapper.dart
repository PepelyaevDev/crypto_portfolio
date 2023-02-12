import 'dart:convert';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

class CoinsMapper {
  static CoinsEntity? convertFromJson(String? json) {
    if (json == null) return null;
    return CoinsEntity.fromJson(jsonDecode(json));
  }

  static String convertToJson(CoinsEntity coinsEntity) {
    return jsonEncode(coinsEntity.toJson());
  }

  static CoinsEntity firstInit({required List<GeckoCoinDTO> geckoCoins}) {
    List<CoinEntity> coinsList = [];
    for (var coin in geckoCoins) {
      coinsList.add(_getEmptyCoin(geckoCoinDTO: coin));
    }
    return CoinsEntity(coins: coinsList, updateTime: DateTime.now());
  }

  static CoinsEntity updateMarketData({
    required List<GeckoCoinDTO> geckoCoins,
    required CoinsEntity coinsEntity,
  }) {
    List<CoinEntity> coinsList = [];
    for (var geckoCoin in geckoCoins) {
      CoinEntity? oldCoin = _getOldCoin(coinsEntity, geckoCoin);
      late final CoinEntity newCoin;
      if (oldCoin != null) {
        newCoin = oldCoin.copyWith(
          currentPrice: geckoCoin.currentPrice,
          marketCap: geckoCoin.marketCap,
        );
      } else {
        newCoin = _getEmptyCoin(geckoCoinDTO: geckoCoin);
      }
      coinsList.add(newCoin);
    }
    return CoinsEntity(coins: coinsList, updateTime: DateTime.now());
  }

  static CoinsEntity updateHistory({
    required CoinsEntity coinsEntity,
    required PaymentEntity paymentEntity,
  }) {
    final index = coinsEntity.coins.indexOf(
      coinsEntity.coins.firstWhere((e) => e.symbol == paymentEntity.symbol),
    );
    final List<PaymentEntity> newHistory = [];
    newHistory.addAll(coinsEntity.coins[index].history);
    final List<CoinEntity> newCoins = [];
    newCoins.addAll(coinsEntity.coins);
    late final double newTotalAmount;
    late final double newMoneyInvested;

    switch (paymentEntity.type) {
      case PaymentType.withdraw:
        newTotalAmount = coinsEntity.coins[index].totalAmount - paymentEntity.numberOfCoins;
        newMoneyInvested = coinsEntity.coins[index].moneyInvested - paymentEntity.amount;
        newHistory.removeWhere((e) => e.dateTime == paymentEntity.dateTime);
        break;
      case PaymentType.deposit:
        newTotalAmount = coinsEntity.coins[index].totalAmount + paymentEntity.numberOfCoins;
        newHistory.add(paymentEntity);
        break;
    }

    newCoins[index] = coinsEntity.coins[index].copyWith(
      buyPrice: newMoneyInvested / newTotalAmount,
      totalAmount: newTotalAmount,
      moneyInvested: newMoneyInvested,
      allCoinsCurrentPrice: coinsEntity.coins[index].currentPrice * newTotalAmount,
      history: newHistory,
    );

    return coinsEntity.copyWith(coins: newCoins);
  }

  static CoinEntity _getEmptyCoin({
    required GeckoCoinDTO geckoCoinDTO,
  }) {
    return CoinEntity(
      symbol: geckoCoinDTO.symbol,
      name: geckoCoinDTO.name,
      image: geckoCoinDTO.image,
      currentPrice: geckoCoinDTO.currentPrice,
      marketCap: geckoCoinDTO.marketCap,
      buyPrice: 0,
      totalAmount: 0,
      moneyInvested: 0,
      allCoinsCurrentPrice: 0,
      history: [],
    );
  }

  static CoinEntity? _getOldCoin(
    CoinsEntity coinsEntity,
    GeckoCoinDTO geckoCoinDTO,
  ) {
    for (var coin in coinsEntity.coins) {
      if (coin.symbol == geckoCoinDTO.symbol) return coin;
    }
    return null;
  }
}
