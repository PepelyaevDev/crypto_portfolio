import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_dio_client.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/dto/cryptopanic_news_dto.dart';

class CryptopanicNewsSource {
  final CryptopanicDioClient _dioClient;
  CryptopanicNewsSource(this._dioClient);

  static const String _path = '/posts/';

  Future<CryptopanicNewsResponse> getNews(
    List<String> currencies,
    List<String> locales,
    int page,
  ) async {
    final response = await _dioClient.get<Map<String, Object?>>(
      _path,
      queryParameters: {
        'auth_token': CryptopanicApiClient.token,
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
