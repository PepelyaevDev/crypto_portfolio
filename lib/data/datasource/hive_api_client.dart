import 'package:crypto_portfolio/data/dto/hive/hive_constants.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveApiClient {
  final _hivePaymentBox = Hive.box<HivePayment>(hivePaymentBoxName);
  final _hiveMarketCoinBox = Hive.box<HiveMarketCoin>(hiveMarketCoinBoxName);

  Future<void> initHiveApiClient() async {
    await Hive.initFlutter();

    Hive.registerAdapter<HivePayment>(HivePaymentAdapter());
    await Hive.openBox<HivePayment>(hivePaymentBoxName);

    Hive.registerAdapter<HiveMarketCoin>(HiveMarketCoinAdapter());
    await Hive.openBox<HiveMarketCoin>(hiveMarketCoinBoxName);
  }

  List<HivePayment> getPaymentsList() {
    return _hivePaymentBox.values.toList();
  }

  Future<void> addPayment(HivePayment payment) async {
    await _hivePaymentBox.put(payment.dateTime, payment);
  }

  Future<void> deletePayment(HivePayment payment) async {
    await _hivePaymentBox.delete(payment.dateTime);
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
