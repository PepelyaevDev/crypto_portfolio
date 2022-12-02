import 'dart:async';
import 'package:coingecko_api/coingecko_api.dart';
import 'package:hive_api/hive_api.dart';
import '../coins_info_repository.dart';

class CoinsInfoRepositoryClient {
  final CoinGeckoApiClient _coinGeckoApiClient = CoinGeckoApiClient();
  final HiveApiClient _hiveApiClient = HiveApiClient();

  RepositoryMarketCoinsList getMarketCoinsList() {
    final HiveMarketCoinsList hiveMarketCoinsList = _hiveApiClient.getMarketCoins();
    final RepositoryMarketCoinsList repositoryMarketCoinsList =
        RepositoryMarketCoinsList.fromHiveApi(hiveMarketCoinsList);
    return repositoryMarketCoinsList;
  }

  Future<RepositoryPortfolioCoinsList> getPortfolioCoinsList() async {
    await _updateHiveMarketCoinsList();
    final RepositoryPortfolioCoinsList repositoryPortfolioCoinsList = RepositoryPortfolioCoinsList.fromHiveApi(
      hiveMarketCoinsList: _hiveApiClient.getMarketCoins(),
      hivePortfolioCoinsList: _hiveApiClient.getPortfolioCoins(),
    );
    return repositoryPortfolioCoinsList;
  }

  Future<void> _updateHiveMarketCoinsList() async {
    final CoingeckoMarketCoinsList coingeckoMarketCoinsList = await _coinGeckoApiClient.getCoins();
    final HiveMarketCoinsList hiveMarketCoinsList = _coingeckoToHiveMarketCoinsList(coingeckoMarketCoinsList);
    await _hiveApiClient.updateMarketCoins(hiveMarketCoinsList);
  }

  HiveMarketCoinsList _coingeckoToHiveMarketCoinsList(CoingeckoMarketCoinsList coinsList) {
    return HiveMarketCoinsList(
      coins: coinsList.coins
          .map(
            (e) => HiveMarketCoin(
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ),
          )
          .toList(),
    );
  }
}
