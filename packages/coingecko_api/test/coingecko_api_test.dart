import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:coingecko_api/coingecko_api.dart';
import 'package:test/test.dart';
import 'models/coingecko_exception/coingecko_exception_response_example.dart';
import 'models/coins_list/get_coins_response_example.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('CoinGeckoApiClient', () {
    late http.Client httpClient;
    late CoinGeckoApiClient apiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      apiClient = CoinGeckoApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(CoinGeckoApiClient(), isNotNull);
      });
    });

    group('getCoinsList', () {
      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await apiClient.getCoins();
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.https(
              'api.coingecko.com',
              '/api/v3/coins/markets',
              {'vs_currency': 'usd'},
            ),
          ),
        ).called(1);
      });

      test('throws getCoinsListFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => apiClient.getCoins(),
          throwsA(isA<Exception>()),
        );
      });

      test('throws CoingeckoException on error response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(jsonEncode(coingeckoExceptionResponseExample));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        await expectLater(
          apiClient.getCoins(),
          throwsA(isA<CoingeckoException>()),
        );
      });

      test('throws LocationNotFoundFailure or incorrect response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(jsonEncode({'test': 'incorrect response'}));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        await expectLater(
          apiClient.getCoins(),
          throwsA(isA<Exception>()),
        );
      });

      test('returns CoinsList on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(jsonEncode(coinsListResponseExample));
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        final actual = await apiClient.getCoins();
        expect(
          actual,
          isA<CoinsList>().having((l) => l.toJson(), 'coinsListToJson', {'coins': coinsListResponseExample}),
        );
      });
    });
  });
}
