import 'package:coingecko_api/coingecko_api.dart';
import 'package:test/test.dart';
import '../resources/coins_list_response_example.dart';

void main() {
  group('CoinsList model test', () {
    group('fromJson/toJson', () {
      test('return correct json after conversion', () {
        expect(
          CoinsList.fromJson(coinsListResponseExample).toJson(),
          coinsListResponseExample,
        );
      });
    });
  });
}
