import 'package:crypto_portfolio/data/gecko_api/dto/all_coins_list/all_coins_list.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/get_coin_params/get_coin_params.dart';

extension GetCoinId on AllCoinsListDto {
  String getId(GetCoinParams params) {
    final List<CoinParamsDto> idsBySymbols = coins.where((e) {
      return e.symbol.toUpperCase() == params.symbol.toUpperCase();
    }).toList();

    final List<CoinParamsDto> idsByNames = idsBySymbols.where((e) {
      return e.name == params.name;
    }).toList();

    if (idsByNames.isEmpty) {
      return idsBySymbols.first.id;
    } else {
      return idsByNames.first.id;
    }
  }
}
