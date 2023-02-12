import 'package:crypto_portfolio/data/gecko_api/api/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/error_interceptor.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';

class GeckoCoinsSource {
  final DioClient _dioClient;
  GeckoCoinsSource(this._dioClient);

  static const String _path = '/api/v3/coins/';

  Future<List<GeckoCoinDTO>> getAllCoins() async {
    final response = await _dioClient.get<dynamic>(
      '$_path/markets/',
      queryParameters: {'vs_currency': 'usd'},
    );
    try {
      final List<GeckoCoinDTO> list = [];
      for (var e in response.data) {
        list.add(GeckoCoinDTO.fromJson(e));
      }
      return list;
    } catch (_) {
      throw GeckoException();
    }
  }
}
