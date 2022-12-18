import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/core'
    '/hive_constants.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initHiveApiClient() async {
  await Hive.initFlutter();

  Hive.registerAdapter<HivePaymentType>(HivePaymentTypeAdapter());
  Hive.registerAdapter<HivePayment>(HivePaymentAdapter());
  await Hive.openBox<HivePayment>(HiveConstants.hivePaymentBoxName);

  Hive.registerAdapter<HiveMarketCoin>(HiveMarketCoinAdapter());
  await Hive.openBox<HiveMarketCoin>(HiveConstants.hiveMarketCoinBoxName);
}
