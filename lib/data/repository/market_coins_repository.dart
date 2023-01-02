import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/feature'
    '/hive_market_coins_client.dart';
import 'package:crypto_portfolio/data/datasource/remote_data_source/coingecko_source/market_coins/market_coins_remote_source.dart';
import 'package:crypto_portfolio/data/mapper/market_coins_mapper.dart';
import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';

class MarketCoinsRepositoryImpl implements MarketCoinsRepository {
  MarketCoinsRepositoryImpl({
    required this.marketCoinsRemoteSource,
    required this.hiveMarketCoinsClient,
    required this.marketCoinsMapper,
  });

  final MarketCoinsRemoteSource marketCoinsRemoteSource;
  final HiveMarketCoinsClient hiveMarketCoinsClient;
  final MarketCoinsMapper marketCoinsMapper;

  @override
  Future<MarketCoinsList> getMarketCoinsListRemote() async {
    return marketCoinsMapper
        .marketCoinsListCoingeckoToUi(await marketCoinsRemoteSource.getMarketCoinsList());
  }

  @override
  MarketCoinsList getMarketCoinsListLocal() {
    return marketCoinsMapper.marketCoinsListHiveToUi(hiveMarketCoinsClient.getMarketCoins());
  }

  @override
  Future<void> updateMarketCoinsListLocal(MarketCoinsList marketCoinsList) async {
    await hiveMarketCoinsClient
        .updateMarketCoins(marketCoinsMapper.marketCoinsListUiToHive(marketCoinsList));
  }
}
