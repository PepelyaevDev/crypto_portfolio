import 'package:crypto_portfolio/data/dto/coingecko/coingecko_market_coins_list.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin.dart';
import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';

class MarketCoinsMapper {
  MarketCoinsList marketCoinsListCoingeckoToUi(CoingeckoMarketCoinsList data) {
    return MarketCoinsList(
      coins: data.coins
          .map((e) => MarketCoin(
                symbol: e.symbol,
                name: e.name,
                image: e.image,
                currentPrice: e.currentPrice,
              ))
          .toList(),
    );
  }

  MarketCoinsList marketCoinsListHiveToUi(List<HiveMarketCoin> data) {
    return MarketCoinsList(
      coins: data
          .map((e) => MarketCoin(
                symbol: e.symbol,
                name: e.name,
                image: e.image,
                currentPrice: e.currentPrice,
              ))
          .toList(),
    );
  }

  List<HiveMarketCoin> marketCoinsListUiToHive(MarketCoinsList data) {
    return data.coins
        .map((e) => HiveMarketCoin(
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ))
        .toList();
  }
}
