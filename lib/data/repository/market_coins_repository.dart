import 'package:crypto_portfolio/data/datasource/coingecko_api_client/coingecko_api_client.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client/feature/hive_market_coins_client.dart';
import 'package:crypto_portfolio/data/mapper/coingecko_mapper.dart';
import 'package:crypto_portfolio/data/mapper/hive_mapper.dart';
import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';

class MarketCoinsRepositoryImpl implements MarketCoinsRepository {
  MarketCoinsRepositoryImpl({
    required this.coinGeckoApiClient,
    required this.hiveMarketCoinsClient,
    required this.coingeckoMapper,
    required this.hiveMapper,
  });

  final CoinGeckoApiClient coinGeckoApiClient;
  final HiveMarketCoinsClient hiveMarketCoinsClient;
  final CoingeckoMapper coingeckoMapper;
  final HiveMapper hiveMapper;

  @override
  Future<MarketCoinsList> getMarketCoinsListRemote() async {
    return coingeckoMapper.marketCoinsListDtoToUi(await coinGeckoApiClient.getCoins());
  }

  @override
  MarketCoinsList getMarketCoinsListLocal() {
    return hiveMapper.marketCoinsListDtoToUi(hiveMarketCoinsClient.getMarketCoins());
  }

  @override
  Future<void> updateMarketCoinsListLocal(MarketCoinsList marketCoinsList) async {
    await hiveMarketCoinsClient.updateMarketCoins(hiveMapper.marketCoinsListUiToDto(marketCoinsList));
  }
}
