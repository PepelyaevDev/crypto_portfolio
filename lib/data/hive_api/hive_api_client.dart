import 'package:crypto_portfolio/data/hive_api/hive_box.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveApiClient {
  final HiveSingleBox<CoinsEntity> portfolioCoins;
  final HiveSingleBox<CoinsEntity> marketCoins;
  final HiveSingleBox<CoinsEntity> watchlistCoins;
  final HiveMultiBox<CoinId> watchlistIds;
  final HiveSingleBox<String> appLocale;
  final HiveMultiBox<String> newsLocales;

  const HiveApiClient({
    required this.portfolioCoins,
    required this.marketCoins,
    required this.watchlistCoins,
    required this.watchlistIds,
    required this.appLocale,
    required this.newsLocales,
  });

  static Future<HiveApiClient> get getClient async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.defaultDirectory = dir.path;
    Hive.registerAdapter<CoinsEntity>('CoinsEntity', CoinsEntity.fromJson);
    Hive.registerAdapter<CoinId>('CoinId', CoinId.fromJson);

    return HiveApiClient(
      portfolioCoins: HiveSingleBox<CoinsEntity>('portfolioCoins'),
      marketCoins: HiveSingleBox<CoinsEntity>('marketCoins'),
      watchlistCoins: HiveSingleBox<CoinsEntity>('watchlistCoins'),
      watchlistIds: HiveMultiBox<CoinId>('watchlistIds'),
      appLocale: HiveSingleBox<String>('appLocale'),
      newsLocales: HiveMultiBox<String>('newsLocales'),
    );
  }
}
