import 'package:crypto_portfolio/data/gecko_api/dto/get_coin_params/get_coin_params.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension CoinIdToDto on CoinId {
  GetCoinParams get toDto => GetCoinParams(symbol: symbol, name: name);
}
