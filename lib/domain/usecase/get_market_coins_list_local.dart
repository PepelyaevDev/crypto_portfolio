import 'package:crypto_portfolio/domain/entity/market_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class GetMarketCoinsListLocalUC {
  GetMarketCoinsListLocalUC({required this.coinsRepository});

  final CoinsRepository coinsRepository;

  MarketCoinsList call() {
    return coinsRepository.getMarketCoinsListLocal();
  }
}
