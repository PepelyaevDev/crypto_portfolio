import 'package:hive_api/hive_api.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/hive_constants.dart';

class HiveApiClient {
  final _hivePaymentHistoryBox = Hive.box<HivePaymentHistory>(hivePaymentHistoryBoxName);
  final _hiveMarketCoinBox = Hive.box<HiveMarketCoin>(hiveMarketCoinBoxName);

  Future<void> initHiveApiClient() async {
    await Hive.initFlutter();
    Hive.registerAdapter<HivePaymentHistory>(HivePaymentHistoryAdapter());
    Hive.registerAdapter<HivePayment>(HivePaymentAdapter());
    Hive.registerAdapter<HivePaymentType>(HivePaymentTypeAdapter());
    Hive.registerAdapter<HiveMarketCoin>(HiveMarketCoinAdapter());
    await Hive.openBox<HivePaymentHistory>(hivePaymentHistoryBoxName);
    await Hive.openBox<HiveMarketCoin>(hiveMarketCoinBoxName);
  }

  Map<dynamic, HivePaymentHistory> getPortfolioCoins() {
    return _hivePaymentHistoryBox.toMap();
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

  Future<void> addPayment(String symbol, HivePayment payment) async {
    HivePaymentHistory? history = _hivePaymentHistoryBox.get(symbol);
    if (history == null) {
      history = HivePaymentHistory(data: [payment]);
    } else {
      history.data.add(payment);
    }
    await _hivePaymentHistoryBox.put(symbol, history);
  }
}
