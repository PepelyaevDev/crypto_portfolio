import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get time => DateFormat(DateFormat.HOUR24_MINUTE).format(this);
}
