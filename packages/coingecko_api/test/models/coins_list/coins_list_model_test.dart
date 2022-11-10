import 'package:coingecko_api/coingecko_api.dart';
import 'package:test/test.dart';
import 'get_coins_response_example.dart';

void main() {
  group('CoinsList', () {
    group('fromJson', () {
      test('returns correct CoinsList object', () {
        expect(
            CoinsList.fromJson({'coins': coinsListResponseExample}),
            isA<CoinsList>()
                .having((w) => w.toJson(), 'coinsListToJson', {'coins': coinsListResponseExample}));
      });
    });
  });
}
