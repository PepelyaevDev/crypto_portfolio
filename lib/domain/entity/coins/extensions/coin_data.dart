import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

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

  // number of coins
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

  String get averageNetCost {
    final double value = holdings == 0 ? 0 : invested / holdings;
    if (value < 0) {
      return '0';
    } else {
      return value.moneyFull;
    }
  }

  // cost of coins
  double get holdingsValue => holdings * currentPrice;

  Color get color => holdingsValue < invested ? AppColors.redLight : AppColors.greenLight;

  bool get hasProfit => holdingsValue > invested;

  IconData get iconData => holdingsValue < invested ? Icons.arrow_drop_down : Icons.arrow_drop_up;

  String get profit {
    double dollarDiff = holdingsValue - invested;
    dollarDiff = dollarDiff > 0 ? dollarDiff : dollarDiff * -1;

    double percentageDiff = invested == 0 ? -1 : dollarDiff / invested * 100;
    String? percentageDiffString;
    if (percentageDiff < 0) {
      percentageDiffString = null;
    } else if (percentageDiff > 10000) {
      percentageDiffString = MoneyFormatter(amount: percentageDiff).output.compactNonSymbol;
    } else {
      percentageDiffString = percentageDiff.toStringAsFixed(2);
    }

    if (percentageDiffString == null) {
      return ' ${dollarDiff.moneyFull}';
    } else {
      return ' $percentageDiffString % (${dollarDiff.moneyFull})';
    }
  }

  bool canDelete(int i) {
    if (history[i].type == PaymentType.buy && history[i].numberOfCoins > holdings) {
      return false;
    }
    return true;
  }
}
