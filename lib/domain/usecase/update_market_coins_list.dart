import 'package:crypto_portfolio/domain/entity/market_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class GetMarketCoinsListRemote {
  GetMarketCoinsListRemote({required this.coinsRepository});

  final CoinsRepository coinsRepository;

  Future<void> call() async {
    final MarketCoinsList marketCoinsList = await coinsRepository.getMarketCoinsListRemote();
    await coinsRepository.updateMarketCoinsListLocal(marketCoinsList);
  }
}
