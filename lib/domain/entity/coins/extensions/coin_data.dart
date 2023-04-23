import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

extension CoinData on CoinEntity {
  double get totalCost {
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

  double get holdings {
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

  double get averageNetCost {
    final double value = holdings == 0 ? 0 : totalCost / holdings;
    return double.parse(value.toStringAsFixed(2));
  }

  double get holdingsValue => holdings * currentPrice;

  Color get color => currentPrice < averageNetCost ? AppColors.red : AppColors.green;

  IconData get iconData =>
      currentPrice < averageNetCost ? Icons.arrow_drop_down : Icons.arrow_drop_up;

  double get dollarDifference {
    final double value = holdingsValue - totalCost;
    return value > 0 ? value : value * -1;
  }

  double get percentageDifference {
    final double value = dollarDifference / totalCost * 100;
    return value > 0 ? value : value * -1;
  }
}
