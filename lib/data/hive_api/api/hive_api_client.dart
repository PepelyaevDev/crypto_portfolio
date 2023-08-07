import 'package:crypto_portfolio/data/hive_api/sources/hive_coins_source.dart';
import 'package:crypto_portfolio/data/hive_api/sources/hive_locales_source.dart';
import 'package:hive_flutter/adapters.dart';

class HiveApiClient {
  final HiveCoinsSource coins;
  final HiveLocalesSource locales;

  const HiveApiClient({
    required this.coins,
    required this.locales,
  });

  static Future<HiveApiClient> get getClient async {
    await Hive.initFlutter();
    final Box appBox = await Hive.openBox('AppBox');
    return HiveApiClient(
      coins: HiveCoinsSource(appBox),
      locales: HiveLocalesSource(appBox),
    );
  }
}
