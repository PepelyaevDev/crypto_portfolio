import 'package:crypto_portfolio/data/dto/coingecko/coingecko_market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/market_coins_list.dart';

class CoingeckoMapper {
  MarketCoinsList marketCoinsListDtoToUi(CoingeckoMarketCoinsList data) {
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
}
