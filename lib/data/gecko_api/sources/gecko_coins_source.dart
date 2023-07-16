import 'package:crypto_portfolio/data/gecko_api/api/gecko_dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:synchronized/synchronized.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/market_chart/market_chart_dto.dart';

class GeckoCoinsSource {
  final GeckoDioClient _dioClient;
  GeckoCoinsSource(this._dioClient);

  static const String _path = '/api/v3/coins/';

  final List<Map<String, dynamic>> _coinsCache = [];
  final _lock = Lock();

  Future<List<GeckoCoinDTO>> getMarketCoins({required int page}) async {
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

  Future<List<GeckoCoinDTO>> getMarketCoinsBySymbols({required List<String> symbols}) async {
    final List<String> ids = await _getIdsFromSymbols(symbols: symbols);
    final response = await _dioClient.get<List<dynamic>>(
      '$_path/markets/',
      queryParameters: {
        'vs_currency': 'usd',
        'ids': ids.join(','),
      },
    );
    return response.data!
        .whereType<Map<String, dynamic>>()
        .toList()
        .map((e) => GeckoCoinDTO.fromJson(e))
        .toList();
  }

  Future<MarketChartDTO> getChartData({
    required String symbol,
    required String days,
  }) async {
    final String id = await _getIdFromSymbol(symbol: symbol);
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

  Future<List<String>> _getIdsFromSymbols({required List<String> symbols}) async {
    final List<String> ids = [];
    for (var symbol in symbols) {
      ids.add(await _getIdFromSymbol(symbol: symbol));
    }
    return ids;
  }

  Future<String> _getIdFromSymbol({required String symbol}) async {
    await _lock.synchronized(() async {
      if (_coinsCache.isEmpty) {
        await _updateCoinsCache();
      }
    });
    return _coinsCache.firstWhere((e) {
      return e['symbol'].toString().toUpperCase() == symbol;
    })['id']!;
  }

  Future<void> _updateCoinsCache() async {
    final response = await _dioClient.get<List<dynamic>>('$_path/list');
    for (var e in response.data!) {
      if (e is Map<String, dynamic>) {
        _coinsCache.add(e);
      }
    }
  }
}
