import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get time => DateFormat(DateFormat.HOUR24_MINUTE).format(this);
  bool get newValue => DateTime.now().difference(this).inSeconds < 1;

  String dateLong(BuildContext context) {
    return DateFormat(DateFormat.YEAR_MONTH_DAY, context.localization.localeName).format(this);
  }
}
