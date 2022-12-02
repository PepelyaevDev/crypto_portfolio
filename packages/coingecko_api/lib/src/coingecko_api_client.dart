import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:coingecko_api/coingecko_api.dart';

class CoinGeckoApiClient {
  static const _baseUrl = 'api.coingecko.com';
  final Client _httpClient = Client();

  Future<List> _getRequest(String unencodedPath, Map<String, dynamic>? queryParameters) async {
    final request = Uri.https(
      _baseUrl,
      unencodedPath,
      queryParameters,
    );
    final response = await _httpClient.get(request);
    if (response.statusCode != 200) {
      throw Exception();
    }
    final dynamic result = jsonDecode(response.body);
    if (result is Map) {
      throw CoingeckoException.fromJson(result as Map<String, dynamic>);
    }
    return result;
  }

  Future<CoingeckoMarketCoinsList> getCoins() async {
    try {
      final List response = await _getRequest(
        '/api/v3/coins/markets',
        {'vs_currency': 'usd'},
      );
      return CoingeckoMarketCoinsList.fromJson(response);
    } catch (e) {
      if (e is CoingeckoException) {
        rethrow;
      }
      throw Exception();
    }
  }
}
