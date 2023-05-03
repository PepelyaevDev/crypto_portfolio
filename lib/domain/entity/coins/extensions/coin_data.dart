import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

extension CoinData on CoinEntity {
  double get invested {
    double value = 0;
    for (final payment in history) {
      switch (payment.type) {
        case PaymentType.buy:
          value = value + payment.amount;
          break;
        case PaymentType.sell:
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
        case PaymentType.buy:
          value = value.addNumber(payment.numberOfCoins);
          break;
        case PaymentType.sell:
          value = value.subtractNumber(payment.numberOfCoins);
          break;
      }
    }
    return value;
  }

  double get averageNetCost {
    final double value = holdings == 0 ? 0 : invested / holdings;
    return double.parse(value.toStringAsFixed(2));
  }

  double get holdingsValue => holdings * currentPrice;

  Color get color => holdingsValue < invested ? AppColors.redLight : AppColors.greenLight;

  IconData get iconData => holdingsValue < invested ? Icons.arrow_drop_down : Icons.arrow_drop_up;

  double get dollarDifference {
    final double value = holdingsValue - invested;
    return value > 0 ? value : value * -1;
  }

  double get percentageDifference {
    final double value = dollarDifference / invested * 100;
    return value > 0 ? value : value * -1;
  }
}
