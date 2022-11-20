import 'package:test/test.dart';
import 'package:coins_info_repository/coins_info_repository.dart';
import '../resources/api_resources.dart';

void main() {
  group('CoinsList model test', () {
    setUp(setUpApiResponse);
    group('fromApi factory test', () {
      test('return correct model after conversion', () {
        expect(
          CoinsList.fromApi(coinsList),
          tryRepositoryCoinsList,
        );
      });
    });
  });
}
