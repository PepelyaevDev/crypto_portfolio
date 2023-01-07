import 'package:crypto_portfolio/domain/entity/market_coins/market_coin_entity.dart';

abstract class MarketCoinRepo {
  Future<List<MarketCoinEntity>> getMarketCoinsRemote();
  List<MarketCoinEntity> getMarketCoinsLocal();
  Future<void> updateMarketCoins(List<MarketCoinEntity> marketCoinsList);
}
