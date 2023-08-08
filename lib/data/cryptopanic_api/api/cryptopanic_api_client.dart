import 'package:crypto_portfolio/data/cryptopanic_api/sources/cryptopanic_news_source.dart';
import 'package:dio/dio.dart';

class CryptopanicApiClient {
  final CryptopanicNewsSource news;
  static const String token = '103be014c698a0e0f0ef21e83ee047bb65731bcf';

  const CryptopanicApiClient({required this.news});

  static CryptopanicApiClient get getClient {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://cryptopanic.com/api/v1',
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 5),
        responseType: ResponseType.json,
        validateStatus: (status) {
          final int code = status ?? 500;
          switch (code) {
            case 200:
              return true;
            default:
              return false;
          }
        },
      ),
    );
    return CryptopanicApiClient(
      news: CryptopanicNewsSource(dio),
    );
  }
}
