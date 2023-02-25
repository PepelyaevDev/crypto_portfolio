import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension CreateEmptyCoin on GeckoCoinDTO {
  CoinEntity get createEmptyCoin => CoinEntity(
        symbol: symbol,
        name: name,
        image: image,
        currentPrice: currentPrice,
        marketCap: marketCap,
        buyPrice: 0,
        totalAmount: 0,
        moneyInvested: 0,
        allCoinsCurrentPrice: 0,
        history: [],
      );
}
