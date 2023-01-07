import 'package:crypto_portfolio/data/dto/gecko/gecko_market_coin_dto.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_market_coin_dto.dart';
import 'package:crypto_portfolio/data/source/local/hive/feature/hive_market_coin_source.dart';
import 'package:crypto_portfolio/data/source/remote/gecko/market_coins/gecko_market_coin_source.dart';
import 'package:crypto_portfolio/domain/entity/market_coins/market_coin_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_coin_repo.dart';

class MarketCoinRepoImpl implements MarketCoinRepo {
  MarketCoinRepoImpl({
    required this.geckoMarketCoinSource,
    required this.hiveMarketCoinSource,
  });

  final GeckoMarketCoinSource geckoMarketCoinSource;
  final HiveMarketCoinSource hiveMarketCoinSource;

  @override
  Future<List<MarketCoinEntity>> getMarketCoinsRemote() async {
    final List<GeckoMarketCoinDTO> list = await geckoMarketCoinSource.getMarketCoins();
    return list.map((e) => e.toEntity()).toList();
  }

  @override
  List<MarketCoinEntity> getMarketCoinsLocal() {
    final List<HiveMarketCoinDTO> list = hiveMarketCoinSource.getMarketCoins();
    return list.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> updateMarketCoins(List<MarketCoinEntity> marketCoinsList) async {
    final List<HiveMarketCoinDTO> list =
        marketCoinsList.map((e) => HiveMarketCoinDTO.fromEntity(e)).toList();
    await hiveMarketCoinSource.updateMarketCoins(list);
  }
}
