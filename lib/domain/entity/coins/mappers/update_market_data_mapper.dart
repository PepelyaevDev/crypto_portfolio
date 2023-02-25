import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/create_empty_coin.dart';

class UpdateMarketDataMapper {
  static CoinsEntity call({
    required List<GeckoCoinDTO> geckoCoins,
    required CoinsEntity coinsEntity,
  }) {
    List<CoinEntity> coinsList = [];
    for (var geckoCoin in geckoCoins) {
      final oldCoin = coinsEntity.coins.where((e) => e.symbol == geckoCoin.symbol);
      late final CoinEntity newCoin;
      if (oldCoin.isNotEmpty) {
        newCoin = CoinEntity(
          currentPrice: geckoCoin.currentPrice,
          marketCap: geckoCoin.marketCap,
          symbol: oldCoin.first.symbol,
          name: oldCoin.first.name,
          image: oldCoin.first.image,
          buyPrice: oldCoin.first.buyPrice,
          totalAmount: oldCoin.first.totalAmount,
          moneyInvested: oldCoin.first.moneyInvested,
          allCoinsCurrentPrice: oldCoin.first.allCoinsCurrentPrice,
          history: oldCoin.first.history,
        );
      } else {
        newCoin = geckoCoin.createEmptyCoin;
      }
      coinsList.add(newCoin);
    }
    return CoinsEntity(coins: coinsList, updateTime: DateTime.now());
  }
}
