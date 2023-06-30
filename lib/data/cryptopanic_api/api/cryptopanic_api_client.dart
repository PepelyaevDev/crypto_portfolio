import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_dio_client.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/sources/cryptopanic_news_source.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CryptopanicApiClient {
  final CryptopanicNewsSource news;
  static const String token = '103be014c698a0e0f0ef21e83ee047bb65731bcf';

  const CryptopanicApiClient({required this.news});

  static CryptopanicApiClient get getClient {
    final dioClient = CryptopanicDioClient(Dio(
      BaseOptions(
        baseUrl: 'https://cryptopanic.com/api/v1',
        connectTimeout: 15000,
        receiveTimeout: 15000,
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
    )..interceptors.addAll([
        PrettyDioLogger(requestHeader: true, requestBody: true),
      ]));
    return CryptopanicApiClient(
      news: CryptopanicNewsSource(dioClient),
    );
  }
}