import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

class CoinsExtension {
  static CoinEntity? getCoinById(CoinsEntity coins, CoinId id) {
    final list = coins.list.where((e) => e.id == id);
    if (list.isEmpty) return null;
    return list.first;
  }
}
