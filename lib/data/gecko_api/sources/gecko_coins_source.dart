import 'package:crypto_portfolio/data/gecko_api/dto/all_coins_list/all_coins_list.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/all_coins_list/extensions/get_id.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/get_coin_params/get_coin_params.dart';
import 'package:dio/dio.dart';
import 'package:synchronized/synchronized.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/market_chart/market_chart_dto.dart';

class GeckoCoinsSource {
  final Dio _dio;
  GeckoCoinsSource(this._dio);

  static const String _path = '/api/v3/coins/';

  AllCoinsListDto _coinsCache = AllCoinsListDto(coins: []);
  final _lock = Lock();

  Future<List<GeckoCoinDTO>> getMarketCoins({required int page}) async {
    final response = await _dio.get<List<dynamic>>(
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

  Future<List<GeckoCoinDTO>> getMarketCoinsByParams({
    required List<GetCoinParams> paramsList,
  }) async {
    final List<String> ids = await _getIdsFromParamsList(paramsList: paramsList);
    final response = await _dio.get<List<dynamic>>(
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
    required GetCoinParams params,
    required String days,
  }) async {
    final String id = await _getIdFromParams(params: params);
    final response = await _dio.get<Map<String, dynamic>>(
      '$_path/$id/market_chart',
      queryParameters: {
        'id': id,
        'vs_currency': 'usd',
        'days': days,
      },
    );
    return MarketChartDTO.fromJson(response.data!);
  }

  Future<List<String>> _getIdsFromParamsList({
    required List<GetCoinParams> paramsList,
  }) async {
    final List<String> ids = [];
    for (var params in paramsList) {
      ids.add(await _getIdFromParams(params: params));
    }
    return ids;
  }

  Future<String> _getIdFromParams({required GetCoinParams params}) async {
    await _lock.synchronized(() async {
      if (_coinsCache.coins.isEmpty) {
        final response = await _dio.get<List<dynamic>>('$_path/list');
        _coinsCache = AllCoinsListDto.fromJson({'coins': response.data!});
      }
    });

    return _coinsCache.getId(params);
  }
}
