import 'package:decimal/decimal.dart';
import 'package:money_formatter/money_formatter.dart';

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

  double addNumber(double secondNumber) {
    final Decimal first = Decimal.parse(toString());
    final Decimal second = Decimal.parse(secondNumber.toString());
    final Decimal result = first + second;
    return result.toDouble();
  }

  double subtractNumber(double secondNumber) {
    final Decimal first = Decimal.parse(toString());
    final Decimal second = Decimal.parse(secondNumber.toString());
    final Decimal result = first - second;
    return result.toDouble();
  }
}
