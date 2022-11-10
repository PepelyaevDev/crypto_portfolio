import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coingecko_api/coingecko_api.dart';

class CoinGeckoApiClient {
  CoinGeckoApiClient({http.Client? httpClient}) : _httpClient = httpClient ?? http.Client();
  static const _baseUrl = 'api.coingecko.com';
  final http.Client _httpClient;

  Future<List> _coingeckoGetRequest(String unencodedPath, Map<String, dynamic>? queryParameters) async {
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

  Future<CoinsList> getCoins() async {
    try {
      final List response = await _coingeckoGetRequest(
        '/api/v3/coins/markets',
        {'vs_currency': 'usd'},
      );
      return CoinsList.fromJson({'coins': response});
    } catch (e) {
      if (e is CoingeckoException) {
        rethrow;
      }
      throw Exception();
    }
  }
}
