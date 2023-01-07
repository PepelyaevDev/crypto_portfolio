import 'package:crypto_portfolio/domain/entity/market_coins/market_coin_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_coin_repo.dart';

class GetMarketCoinsLocalUsecase {
  GetMarketCoinsLocalUsecase({required this.marketCoinsRepository});

  final MarketCoinRepo marketCoinsRepository;

  List<MarketCoinEntity> call() {
    return marketCoinsRepository.getMarketCoinsLocal();
  }
}
