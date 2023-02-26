import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

class UpdateHistoryMapper {
  static CoinsEntity call({
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
        ///TODO: перепутаны удаление и продажа, если дата старая удалить платеж, если дата новая
        ///добавить платеж
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
}
