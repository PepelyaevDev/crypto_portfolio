import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension GeckoCoinDtoToEntity on GeckoCoinDTO {
  CoinEntity get createEmptyCoin => CoinEntity(
        id: id,
        symbol: symbol,
        name: name,
        image: image,
        currentPrice: currentPrice,
        marketCap: marketCap ?? 0,
        priceChangePercentage24H: priceChangePercentage_24h,
        history: [],
      );
}
