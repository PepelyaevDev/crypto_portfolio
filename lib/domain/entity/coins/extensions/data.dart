import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

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

  double get averagePrice {
    final double value = totalAmount == 0 ? 0 : moneyInvested / totalAmount;
    return double.parse(value.toStringAsFixed(2));
  }

  double get priceAllCoins => totalAmount * currentPrice;

  Color get color => currentPrice < averagePrice ? Colors.red : Colors.green;

  IconData get iconData => currentPrice < averagePrice ? Icons.arrow_downward : Icons.arrow_upward;

  double get dollarDifference {
    final double value = priceAllCoins - moneyInvested;
    return value > 0 ? value : value * -1;
  }

  double get percentageDifference {
    final double value = dollarDifference / moneyInvested * 100;
    return value > 0 ? value : value * -1;
  }
}
