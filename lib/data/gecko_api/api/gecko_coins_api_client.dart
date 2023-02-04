import 'package:crypto_portfolio/data/gecko_api/dio/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';

class GeckoCoinsApiClient {
  final DioClient _dioClient;
  GeckoCoinsApiClient(this._dioClient);

  static const _path = '/api/v3/coins/';
  final String list = '$_path/markets/';

  Future<List<GeckoCoinDTO>> getAllCoins() async {
    final response = await _dioClient.get<dynamic>(list, queryParameters: {'vs_currency': 'usd'});
    return response.data.map((e) => GeckoCoinDTO.fromJson(e)).toList();
  }
}
