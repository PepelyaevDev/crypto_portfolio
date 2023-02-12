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
        newCoin = CoinEntity(
          currentPrice: geckoCoin.currentPrice,
          marketCap: geckoCoin.marketCap,
          symbol: oldCoin.symbol,
          name: oldCoin.name,
          image: oldCoin.image,
          buyPrice: oldCoin.buyPrice,
          totalAmount: oldCoin.totalAmount,
          moneyInvested: oldCoin.moneyInvested,
          allCoinsCurrentPrice: oldCoin.allCoinsCurrentPrice,
          history: oldCoin.history,
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
    late final CoinEntity coinEntity = coinsEntity.coins.firstWhere(
      (e) => e.symbol == paymentEntity.symbol,
    );
    final List<PaymentEntity> newHistory = [];
    newHistory.addAll(coinEntity.history);
    final List<CoinEntity> newCoins = [];
    newCoins.addAll(coinsEntity.coins);
    late final double newTotalAmount;
    late final double newMoneyInvested;

    switch (paymentEntity.type) {
      case PaymentType.withdraw:
        newTotalAmount = coinEntity.totalAmount - paymentEntity.numberOfCoins;
        newMoneyInvested = coinEntity.moneyInvested - paymentEntity.amount;
        newHistory.removeWhere((e) => e.dateTime == paymentEntity.dateTime);
        break;
      case PaymentType.deposit:
        newTotalAmount = coinEntity.totalAmount + paymentEntity.numberOfCoins;
        newHistory.add(paymentEntity);
        break;
    }

    newCoins[newCoins.indexOf(coinEntity)] = CoinEntity(
      buyPrice: newMoneyInvested / newTotalAmount,
      totalAmount: newTotalAmount,
      moneyInvested: newMoneyInvested,
      allCoinsCurrentPrice: coinEntity.currentPrice * newTotalAmount,
      history: newHistory,
      symbol: coinEntity.symbol,
      name: coinEntity.name,
      image: coinEntity.image,
      currentPrice: coinEntity.currentPrice,
      marketCap: coinEntity.marketCap,
    );

    return CoinsEntity(coins: newCoins, updateTime: coinsEntity.updateTime);
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

  static CoinEntity? _getOldCoin(CoinsEntity coinsEntity, GeckoCoinDTO geckoCoinDTO) {
    for (var coin in coinsEntity.coins) {
      if (coin.symbol == geckoCoinDTO.symbol) return coin;
    }
    return null;
  }
}
