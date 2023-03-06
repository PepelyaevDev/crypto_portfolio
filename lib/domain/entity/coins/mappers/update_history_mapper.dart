import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

//delete or add payment
class UpdateHistoryMapper {
  static CoinsEntity call({
    required CoinsEntity coinsEntity,
    required PaymentEntity paymentEntity,
  }) {
    late final CoinEntity coinEntity = coinsEntity.list.firstWhere(
      (e) => e.symbol == paymentEntity.symbol,
    );

    final List<CoinEntity> newCoins = [];
    newCoins.addAll(coinsEntity.list);

    final List<PaymentEntity> newHistory = [];
    newHistory.addAll(coinEntity.history);

    late final double newTotalAmount;
    late final double newMoneyInvested;

    if (newHistory.contains(paymentEntity)) {
      //delete payment
      switch (paymentEntity.type) {
        case PaymentType.withdraw:
          newTotalAmount = coinEntity.totalAmount + paymentEntity.numberOfCoins;
          newMoneyInvested = coinEntity.moneyInvested + paymentEntity.amount;
          break;
        case PaymentType.deposit:
          newTotalAmount = coinEntity.totalAmount - paymentEntity.numberOfCoins;
          newMoneyInvested = coinEntity.moneyInvested - paymentEntity.amount;
          break;
      }
      newHistory.remove(paymentEntity);
    } else {
      //add payment
      switch (paymentEntity.type) {
        case PaymentType.withdraw:
          newTotalAmount = coinEntity.totalAmount - paymentEntity.numberOfCoins;
          newMoneyInvested = coinEntity.moneyInvested - paymentEntity.amount;
          break;
        case PaymentType.deposit:
          newTotalAmount = coinEntity.totalAmount + paymentEntity.numberOfCoins;
          newMoneyInvested = coinEntity.moneyInvested + paymentEntity.amount;
          break;
      }
      newHistory.add(paymentEntity);
    }

    newCoins[newCoins.indexOf(coinEntity)] = CoinEntity(
      totalAmount: newTotalAmount,
      moneyInvested: newMoneyInvested,
      history: newHistory,
      symbol: coinEntity.symbol,
      name: coinEntity.name,
      image: coinEntity.image,
      currentPrice: coinEntity.currentPrice,
      marketCap: coinEntity.marketCap,
    );

    return CoinsEntity(list: newCoins, updateTime: coinsEntity.updateTime);
  }
}
