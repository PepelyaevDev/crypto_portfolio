import 'package:crypto_portfolio/data/gecko_api/api/gecko_dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/market_chart/market_chart_dto.dart';

class GeckoCoinsSource {
  final GeckoDioClient _dioClient;
  GeckoCoinsSource(this._dioClient);

  static const String _path = '/api/v3/coins/';

  Future<List<GeckoCoinDTO>> getMarketCoins(int page) async {
    final response = await _dioClient.get<List<dynamic>>(
      '$_path/markets/',
      queryParameters: {
        'vs_currency': 'usd',
        'page': page,
      },
    );
    return response.data!
        .whereType<Map<String, dynamic>>()
        .toList()
        .map((e) => GeckoCoinDTO.fromJson(e))
        .toList();
  }

  Future<List<GeckoCoinDTO>> getMarketCoinsByIds(List<String> id) async {
    final response = await _dioClient.get<List<dynamic>>(
      '$_path/markets/',
      queryParameters: {
        'vs_currency': 'usd',
        'ids': id.join(','),
      },
    );
    return response.data!
        .whereType<Map<String, dynamic>>()
        .toList()
        .map((e) => GeckoCoinDTO.fromJson(e))
        .toList();
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
