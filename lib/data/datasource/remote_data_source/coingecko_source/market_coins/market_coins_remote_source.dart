import 'package:crypto_portfolio/data/datasource/remote_data_source/dio/dio_clients.dart';
import 'package:crypto_portfolio/data/datasource/remote_data_source/dio/dio_constants.dart';
import 'package:crypto_portfolio/data/datasource/remote_data_source/dio/response.dart';
import 'package:crypto_portfolio/data/dto/coingecko/coingecko_exception.dart';
import 'package:crypto_portfolio/data/dto/coingecko/coingecko_market_coins_list.dart';

class MarketCoinsRemoteSource {
  final DioClient _dioClient;

  MarketCoinsRemoteSource(this._dioClient);

  Future<CoingeckoMarketCoinsList> getMarketCoinsList() async {
    final response = await _dioClient.get<dynamic>(
      DioConstants.marketCoinsEndpoints.list,
      queryParameters: {'vs_currency': 'usd'},
    );
    if (response.isOK) {
      if (response.data is List) {
        return CoingeckoMarketCoinsList.fromJson(response.data);
      } else if (response.data is Map) {
        throw CoingeckoException.fromJson(response.data);
      }
    }
    throw Exception();
  }
}
