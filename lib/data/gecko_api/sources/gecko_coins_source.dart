import 'package:crypto_portfolio/data/gecko_api/api/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/market_chart/market_chart_dto.dart';

class GeckoCoinsSource {
  final DioClient _dioClient;
  GeckoCoinsSource(this._dioClient);

  static const String _path = '/api/v3/coins/';

  Future<List<GeckoCoinDTO>> getMarketCoins() async {
    final response = await _dioClient.get<List<dynamic>>(
      '$_path/markets/',
      queryParameters: {
        'vs_currency': 'usd',
      },
    );
    return response.data!
        .whereType<Map<String, dynamic>>()
        .toList()
        .map((e) => GeckoCoinDTO.fromJson(e))
        .toList();
  }

  Future<GeckoCoinDTO> getMarketCoinById(String id) async {
    final response = await _dioClient.get<List<dynamic>>(
      '$_path/markets/',
      queryParameters: {
        'vs_currency': 'usd',
        'ids': id,
      },
    );
    return response.data!
        .whereType<Map<String, dynamic>>()
        .toList()
        .map((e) => GeckoCoinDTO.fromJson(e))
        .toList()
        .firstWhere((element) => element.id == id);
  }

  Future<MarketChartDTO> getChartData(String id, String days) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '$_path/$id/market_chart',
      queryParameters: {
        'id': id,
        'vs_currency': 'usd',
        'days': days,
      },
    );
    return MarketChartDTO.fromJson(response.data!);
  }
}
