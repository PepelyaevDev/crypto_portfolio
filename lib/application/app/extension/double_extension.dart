import 'package:money_formatter/money_formatter.dart';
import 'dart:math';

extension DoubleExtension on double {
  String get moneyCompact => MoneyFormatter(amount: this).output.compactSymbolOnLeft;
  String get moneyFull => MoneyFormatter(amount: this).output.symbolOnLeft;
  String get percentageToString {
    if (this > 10000) {
      return MoneyFormatter(amount: this).output.compactNonSymbol;
    } else {
      return toStringAsFixed(2);
    }
  }
}
