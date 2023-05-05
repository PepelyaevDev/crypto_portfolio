import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

extension PortfolioData on CoinsEntity {
  double get invested {
    double value = 0;
    for (final coin in list) {
      value += coin.invested;
    }
    return value;
  }

  double get holdingsValue {
    double value = 0;
    for (final coin in list) {
      value += coin.holdingsValue;
    }
    return value;
  }

  Color get color => holdingsValue < invested ? AppColors.redLight : AppColors.greenLight;

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
}
