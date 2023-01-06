import 'package:crypto_portfolio/domain/entity/market_coins/market_coins_list.dart';

abstract class MarketCoinsRepository {
  Future<List<MarketCoin>> getMarketCoinsRemote();
  List<MarketCoin> getMarketCoinsLocal();
  Future<void> updateMarketCoinsLocal(List<MarketCoin> marketCoinsList);
}
