import 'dart:async';
import 'package:coingecko_api/coingecko_api.dart' hide CoinsList, Coin;
import 'package:coins_info_repository/coins_info_repository.dart';

class CoinsInfoRepository {
  CoinsInfoRepository({CoinGeckoApiClient? coinGeckoApiClient})
      : _coinGeckoApiClient = coinGeckoApiClient ?? CoinGeckoApiClient();

  final CoinGeckoApiClient _coinGeckoApiClient;

  Future<CoinsList> getCoins() async {
    final coinsList = await _coinGeckoApiClient.getCoins();
    return CoinsList.fromApi(coinsList);
  }
}
