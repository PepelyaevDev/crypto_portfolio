import 'package:coingecko_api/coingecko_api.dart';
import 'package:test/test.dart';
import 'coingecko_exception_response_example.dart';

void main() {
  group('CoingeckoException', () {
    group('fromJson', () {
      test('returns correct CoingeckoException object', () {
        expect(
          CoingeckoException.fromJson(coingeckoExceptionResponseExample),
          isA<CoingeckoException>()
              .having((w) => w.toJson(), 'coingeckoExceptionToJson', coingeckoExceptionResponseExample),
        );
      });
    });
  });
}
