import 'package:crypto_portfolio/data/source/local/hive/core/hive_constants.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin_dto.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveInit {
  static Future<void> call() async {
    await Hive.initFlutter();

    //Market coin box
    Hive.registerAdapter<HiveMarketCoinDTO>(HiveMarketCoinDTOAdapter());
    await Hive.openBox<HiveMarketCoinDTO>(HiveConstants.hiveMarketCoinDTOBoxName);

    //Payment box
    Hive.registerAdapter<HivePaymentDTO>(HivePaymentDTOAdapter());
    await Hive.openBox<HivePaymentDTO>(HiveConstants.hivePaymentDTOBoxName);
  }
}
