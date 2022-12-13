import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';

class UpdateMarketCoinsListUC {
  UpdateMarketCoinsListUC({required this.marketCoinsRepository});

  final MarketCoinsRepository marketCoinsRepository;

  Future<void> call() async {
    final MarketCoinsList marketCoinsList = await marketCoinsRepository.getMarketCoinsListRemote();
    await marketCoinsRepository.updateMarketCoinsListLocal(marketCoinsList);
  }
}
