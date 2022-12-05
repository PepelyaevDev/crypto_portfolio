import 'dart:async';
import 'package:coingecko_api/coingecko_api.dart';
import 'package:hive_api/hive_api.dart';
import '../coins_info_repository.dart';

class CoinsInfoRepositoryClient {
  final CoinGeckoApiClient _coinGeckoApiClient = CoinGeckoApiClient();
  final HiveApiClient _hiveApiClient = HiveApiClient();
  final RepositoryConverter _converter = RepositoryConverter();

  RepositoryMarketCoinsList getMarketCoinsList() {
    final List<HiveMarketCoin> hiveMarketCoinsList = _hiveApiClient.getMarketCoins();
    final RepositoryMarketCoinsList repositoryMarketCoinsList =
        _converter.hiveToRepositoryMarketCoinsList(hiveMarketCoinsList);
    return repositoryMarketCoinsList;
  }

  Future<RepositoryPortfolioCoinsList> getPortfolioCoinsList() async {
    await _updateHiveMarketCoinsList();
    final RepositoryPortfolioCoinsList repositoryPortfolioCoinsList = _converter.createRepositoryPortfolioCoinsList(
      hiveMarketCoinsList: _hiveApiClient.getMarketCoins(),
      hivePortfolioCoinsList: _hiveApiClient.getPortfolioCoins(),
    );
    return repositoryPortfolioCoinsList;
  }

  Future<RepositoryPortfolioCoinsList> addPayment(String symbol, RepositoryPayment payment) async {
    await _hiveApiClient.addPayment(symbol, _converter.repositoryToHivePayment(payment));
    return await getPortfolioCoinsList();
  }

  Future<void> _updateHiveMarketCoinsList() async {
    final CoingeckoMarketCoinsList coingeckoMarketCoinsList = await _coinGeckoApiClient.getCoins();
    final List<HiveMarketCoin> hiveMarketCoinsList =
        _converter.coingeckoToHiveMarketCoinsList(coingeckoMarketCoinsList);
    await _hiveApiClient.updateMarketCoins(hiveMarketCoinsList);
  }
}
