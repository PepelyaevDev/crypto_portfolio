import 'package:crypto_portfolio/domain/entity/market_coins/market_coin_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_coin_repo.dart';

class UpdateMarketCoinsUsecase {
  UpdateMarketCoinsUsecase({required this.marketCoinsRepository});

  final MarketCoinRepo marketCoinsRepository;

  Future<void> call() async {
    final List<MarketCoinEntity> marketCoinsList =
        await marketCoinsRepository.getMarketCoinsRemote();
    await marketCoinsRepository.updateMarketCoins(marketCoinsList);
  }
}
