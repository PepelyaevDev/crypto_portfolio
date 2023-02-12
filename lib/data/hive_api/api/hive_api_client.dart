import 'package:crypto_portfolio/data/hive_api/sources/hive_coins_source.dart';
import 'package:hive_flutter/adapters.dart';

class HiveApiClient {
  final HiveCoinsSource coins;

  const HiveApiClient({
    required this.coins,
  });

  static Future<HiveApiClient> get getClient async {
    await Hive.initFlutter();
    final Box appBox = await Hive.openBox('AppBox');
    return HiveApiClient(
      coins: HiveCoinsSource(appBox),
    );
  }
}
