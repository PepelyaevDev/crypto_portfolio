import 'package:money_formatter/money_formatter.dart';

extension DoubleExtension on double {
  String get moneyCompact => MoneyFormatter(amount: this).output.compactSymbolOnLeft;
  String get moneyFull => MoneyFormatter(amount: this).output.symbolOnLeft;
}
