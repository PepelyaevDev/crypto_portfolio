import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension CoinData on CoinEntity {
  double get moneyInvested {
    double value = 0;
    for (final payment in history) {
      switch (payment.type) {
        case PaymentType.deposit:
          value = value + payment.amount;
          break;
        case PaymentType.withdraw:
          value = value - payment.amount;
          break;
      }
    }
    return value;
  }

  double get totalAmount {
    double value = 0;
    for (final payment in history) {
      switch (payment.type) {
        case PaymentType.deposit:
          value = value + payment.numberOfCoins;
          break;
        case PaymentType.withdraw:
          value = value - payment.numberOfCoins;
          break;
      }
    }
    return value;
  }

  double get averagePrice => totalAmount == 0 ? 0 : moneyInvested / totalAmount;

  double get priceAllCoins => totalAmount * currentPrice;
}
