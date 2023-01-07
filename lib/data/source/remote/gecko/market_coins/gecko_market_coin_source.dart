import 'package:crypto_portfolio/data/source/remote/dio/dio_client.dart';
import 'package:crypto_portfolio/data/source/remote/dio/dio_constants.dart';
import 'package:crypto_portfolio/data/source/remote/dio/dio_response.dart';
import 'package:crypto_portfolio/data/dto/gecko/gecko_error_dto.dart';
import 'package:crypto_portfolio/data/dto/gecko/gecko_market_coin_dto.dart';

class GeckoMarketCoinSource {
  final DioClient _dioClient;

  GeckoMarketCoinSource(this._dioClient);

  Future<List<GeckoMarketCoinDTO>> getMarketCoins() async {
    final response = await _dioClient.get<dynamic>(
      DioConstants.marketCoinsEndpoints.list,
      queryParameters: {'vs_currency': 'usd'},
    );
    if (response.isOK) {
      if (response.data is List) {
        List<GeckoMarketCoinDTO> list = [];
        response.data.forEach((e) {
          final GeckoMarketCoinDTO coin = GeckoMarketCoinDTO.fromJson(e);
          list.add(coin);
        });
        return list;
      } else if (response.data is Map) {
        throw GeckoErrorDTO.fromJson(response.data);
      }
    }
    throw Exception();
  }
}
