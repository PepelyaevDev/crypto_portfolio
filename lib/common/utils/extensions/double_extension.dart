import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/consts/reg_exp.dart';
import 'package:decimal/decimal.dart';
import 'package:intl/intl.dart';
import 'package:money_formatter/money_formatter.dart';

extension DoubleExtension on double {
  String get moneyCompact => MoneyFormatter(amount: this).output.compactSymbolOnLeft;

  String get moneyFull {
    int fractionDigits = 2;
    if (this > -2 && this < 2) {
      fractionDigits = 5;
    }
    if (this > -0.01 && this < 0.01) {
      fractionDigits = 8;
    }
    return MoneyFormatter(
      amount: this,
      settings: MoneyFormatterSettings(fractionDigits: fractionDigits),
    ).output.symbolOnLeft;
  }

  String compactLong(String locale) {
    final String formattedNumber = NumberFormat.compactLong(locale: locale).format(this);
    return formattedNumber.replaceAllMapped(
      AppRegExp.firstLetter,
      (match) => match.group(0)?.toUpperCase() ?? emptyString,
    );
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
