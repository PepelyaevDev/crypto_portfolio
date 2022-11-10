import 'package:mocktail/mocktail.dart';
import 'package:coingecko_api/coingecko_api.dart' as coingecko_api;
import 'package:test/test.dart';
import 'package:coins_info_repository/coins_info_repository.dart';

class MockCoingeckoApiClient extends Mock implements coingecko_api.CoinGeckoApiClient {}

class MockCoinsList extends Mock implements coingecko_api.CoinsList {}

class MockCoin1 extends Mock implements coingecko_api.Coin {}

class MockCoin2 extends Mock implements coingecko_api.Coin {}

void main() {
  group('CoinsInfoRepository', () {
    late coingecko_api.CoinGeckoApiClient coingeckoApiClient;
    late CoinsInfoRepository coinsInfoRepository;

    setUp(() {
      coingeckoApiClient = MockCoingeckoApiClient();
      coinsInfoRepository = CoinsInfoRepository(
        coinGeckoApiClient: coingeckoApiClient,
      );
    });

    group('constructor', () {
      test('instantiates internal coingecko api client when not injected', () {
        expect(CoinsInfoRepository(), isNotNull);
      });
    });

    group('getCoinsInfo', () {
      const id1 = '1';
      const symbol1 = 'btc';
      const name1 = 'bitcoin';
      const image1 = 'btc/img';
      const currentPrice1 = 16.3;
      const id2 = '2';
      const symbol2 = 'eth';
      const name2 = 'ethereum';
      const image2 = 'eth/img';
      const currentPrice2 = 1.2;

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
        final coinsList = MockCoinsList();
        final coin1 = MockCoin1();
        final coin2 = MockCoin2();
        when(() => coin1.id).thenReturn(id1);
        when(() => coin1.symbol).thenReturn(symbol1);
        when(() => coin1.name).thenReturn(name1);
        when(() => coin1.image).thenReturn(image1);
        when(() => coin1.currentPrice).thenReturn(currentPrice1);
        when(() => coin2.id).thenReturn(id2);
        when(() => coin2.symbol).thenReturn(symbol2);
        when(() => coin2.name).thenReturn(name2);
        when(() => coin2.image).thenReturn(image2);
        when(() => coin2.currentPrice).thenReturn(currentPrice2);
        when(() => coinsList.coins).thenReturn([coin1, coin2]);
        when(() => coingeckoApiClient.getCoins()).thenAnswer((_) async => coinsList);
        final actual = await coinsInfoRepository.getCoins();
        expect(
          actual,
          const CoinsList(
            coins: [
              Coin(
                id: id1,
                symbol: symbol1,
                name: name1,
                image: image1,
                currentPrice: currentPrice1,
              ),
              Coin(
                id: id2,
                symbol: symbol2,
                name: name2,
                image: image2,
                currentPrice: currentPrice2,
              ),
            ],
          ),
        );
      });
    });
  });
}
