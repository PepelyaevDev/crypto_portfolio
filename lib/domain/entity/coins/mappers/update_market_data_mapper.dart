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
      final oldCoin = coinsEntity.list.where((e) => e.symbol == geckoCoin.symbol);
      late final CoinEntity newCoin;
      if (oldCoin.isNotEmpty) {
        newCoin = CoinEntity(
          currentPrice: geckoCoin.currentPrice,
          marketCap: geckoCoin.marketCap,
          symbol: geckoCoin.symbol,
          name: geckoCoin.name,
          image: geckoCoin.image,
          totalAmount: oldCoin.first.totalAmount,
          moneyInvested: oldCoin.first.moneyInvested,
          history: oldCoin.first.history,
        );
      } else {
        newCoin = geckoCoin.createEmptyCoin;
      }
      coinsList.add(newCoin);
    }
    return CoinsEntity(list: coinsList, updateTime: DateTime.now());
  }
}
