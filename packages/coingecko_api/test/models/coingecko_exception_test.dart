import 'package:coingecko_api/coingecko_api.dart';
import 'package:test/test.dart';
import '../resources/coingecko_exception_response_example.dart';

void main() {
  group('Coingecko exception model test', () {
    group('fromJson/toJson', () {
      test('return correct json after conversion', () {
        expect(
          CoingeckoException.fromJson(coingeckoExceptionResponseExample).toJson(),
          coingeckoExceptionResponseExample,
        );
      });
    });
  });
}
