import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/create_empty_coin.dart';

class CreateEmptyCoinsMapper {
  static CoinsEntity call({required List<GeckoCoinDTO> geckoCoins}) {
    List<CoinEntity> coinsList = [];
    for (var coin in geckoCoins) {
      coinsList.add(coin.createEmptyCoin);
    }
    return CoinsEntity(list: coinsList, updateTime: DateTime.now());
  }
}
