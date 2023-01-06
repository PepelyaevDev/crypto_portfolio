class HiveService {
  static String getPaymentKey(DateTime date) {
    return (date.year.toString() +
        date.month.toString() +
        date.day.toString() +
        date.hour.toString() +
        date.minute.toString() +
        date.second.toString());
  }
}
