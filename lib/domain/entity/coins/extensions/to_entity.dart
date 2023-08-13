import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension GeckoCoinDtoToEntity on GeckoCoinDTO {
  CoinEntity get createEmptyCoin => CoinEntity(
        id: CoinId(symbol: symbol.toUpperCase(), name: name),
        image: image,
        currentPrice: currentPrice ?? 0,
        marketCap: marketCap ?? 0,
        priceChangePercentage24H: priceChangePercentage_24h ?? 0,
        marketCapRank: marketCapRank,
        circulatingSupply: circulatingSupply,
        totalSupply: totalSupply,
        maxSupply: maxSupply,
        history: [],
      );
}

extension GeckoCoinsDtoToEntity on List<GeckoCoinDTO> {
  CoinEntity createEmptyCoin(CoinId id) {
    return firstWhere((e) {
      return e.symbol.toUpperCase() == id.symbol && e.name == id.name;
    }).createEmptyCoin;
  }
}
