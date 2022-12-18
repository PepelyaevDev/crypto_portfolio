import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';

abstract class MarketCoinsRepository {
  Future<MarketCoinsList> getMarketCoinsListRemote();
  MarketCoinsList getMarketCoinsListLocal();
  Future<void> updateMarketCoinsListLocal(MarketCoinsList marketCoinsList);
}
