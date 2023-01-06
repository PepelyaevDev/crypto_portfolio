import 'package:crypto_portfolio/domain/entity/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';

class GetMarketCoinsListLocalUC {
  GetMarketCoinsListLocalUC({required this.marketCoinsRepository});

  final MarketCoinsRepository marketCoinsRepository;

  List<MarketCoin> call() {
    return marketCoinsRepository.getMarketCoinsLocal();
  }
}
