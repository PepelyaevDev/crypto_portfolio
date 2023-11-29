import 'package:crypto_portfolio/data/cryptopanic_api/dto/cryptopanic_news_dto.dart';
import 'package:dio/dio.dart';

class CryptopanicNewsSource {
  final Dio _dio;
  CryptopanicNewsSource(this._dio);

  static const String _path = '/posts/';

  Future<CryptopanicNewsResponse> getNews(
    List<String> currencies,
    List<String> locales,
    int page,
  ) async {
    final response = await _dio.get<Map<String, Object?>>(
      _path,
      queryParameters: {
        'currencies': currencies.map((e) => e.toUpperCase()).toList().join(','),
        'regions': locales.join(','),
        'kind': 'news',
        'metadata': true,
        'page': page,
      },
    );
    return CryptopanicNewsResponse.fromJson(response.data!);
  }
}
