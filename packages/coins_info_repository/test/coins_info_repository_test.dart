import 'package:mocktail/mocktail.dart';
import 'package:coingecko_api/coingecko_api.dart' as coingecko_api;
import 'package:test/test.dart';
import 'package:coins_info_repository/coins_info_repository.dart';
import 'resources/api_response.dart';

class MockCoingeckoApiClient extends Mock implements coingecko_api.CoinGeckoApiClient {}

void main() {
  group('CoinsInfoRepository', () {
    late coingecko_api.CoinGeckoApiClient coingeckoApiClient;
    late CoinsInfoRepository coinsInfoRepository;

    setUp(() {
      coingeckoApiClient = MockCoingeckoApiClient();
      coinsInfoRepository = CoinsInfoRepository(
        coinGeckoApiClient: coingeckoApiClient,
      );
      setUpApiResponse();
    });

    group('constructor', () {
      test('instantiates internal coingecko api client when not injected', () {
        expect(CoinsInfoRepository(), isNotNull);
      });
    });

    group('getCoinsInfo', () {
      test('calls getCoins', () async {
        try {
          await coinsInfoRepository.getCoins();
        } catch (_) {}
        verify(() => coingeckoApiClient.getCoins()).called(1);
      });

      test('throws when getCoins fails', () async {
        final exception = Exception('oops');
        when(() => coingeckoApiClient.getCoins()).thenThrow(exception);
        expect(
          () async => coinsInfoRepository.getCoins(),
          throwsA(exception),
        );
      });

      test('returns correct coinsList', () async {
        when(() => coingeckoApiClient.getCoins()).thenAnswer((_) async => coinsList);
        final actual = await coinsInfoRepository.getCoins();
        expect(actual, tryRepositoryCoinsList);
      });
    });
  });
}
