import 'package:crypto_portfolio/data/dto/hive/hive_constants.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveApiClient {
  late final _hivePaymentBox;
  late final _hiveMarketCoinBox;

  Future<void> initHiveApiClient() async {
    await Hive.initFlutter();

    Hive.registerAdapter<HivePaymentType>(HivePaymentTypeAdapter());
    Hive.registerAdapter<HivePayment>(HivePaymentAdapter());
    await Hive.openBox<HivePayment>(hivePaymentBoxName);
    _hivePaymentBox = Hive.box<HivePayment>(hivePaymentBoxName);

    Hive.registerAdapter<HiveMarketCoin>(HiveMarketCoinAdapter());
    await Hive.openBox<HiveMarketCoin>(hiveMarketCoinBoxName);
    _hiveMarketCoinBox = Hive.box<HiveMarketCoin>(hiveMarketCoinBoxName);
  }

  String getPaymentKey(DateTime date) {
    return (date.year.toString() +
        date.month.toString() +
        date.day.toString() +
        date.hour.toString() +
        date.minute.toString() +
        date.second.toString());
  }

  List<HivePayment> getPaymentsList() {
    return _hivePaymentBox.values.toList();
  }

  Future<void> addPayment(HivePayment payment) async {
    await _hivePaymentBox.put(getPaymentKey(payment.dateTime), payment);
  }

  Future<void> deletePayment(HivePayment payment) async {
    await _hivePaymentBox.delete(getPaymentKey(payment.dateTime));
  }

  List<HiveMarketCoin> getMarketCoins() {
    return _hiveMarketCoinBox.values.toList();
  }

  Future<void> updateMarketCoins(List<HiveMarketCoin> data) async {
    await _hiveMarketCoinBox.clear();
    Map<String, HiveMarketCoin> coins = {};
    data.forEach((value) {
      coins[value.symbol] = value;
    });
    await _hiveMarketCoinBox.putAll(coins);
  }
}
