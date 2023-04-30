import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

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

  double get dollarDifference {
    final double value = holdingsValue - invested;
    return value > 0 ? value : value * -1;
  }

  double get percentageDifference {
    final double value = dollarDifference / invested * 100;
    return value > 0 ? value : value * -1;
  }
}
