import 'package:crypto_portfolio/data/gecko_api/api/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';

class GeckoCoinsSource {
  final DioClient _dioClient;
  GeckoCoinsSource(this._dioClient);

  static const String _path = '/api/v3/coins/';

  Future<List<GeckoCoinDTO>> getMarketCoins({String? id}) async {
    final response = await _dioClient.get<List<dynamic>>(
      '$_path/markets/',
      queryParameters: {
        'vs_currency': 'usd',
        'ids': id ?? '',
      },
    );
    return response.data!
        .whereType<Map<String, dynamic>>()
        .toList()
        .map((e) => GeckoCoinDTO.fromJson(e))
        .toList();
  }
}
