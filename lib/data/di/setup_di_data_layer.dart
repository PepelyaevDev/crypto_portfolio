import 'package:crypto_portfolio/data/datasource/coingecko_api_client/coingecko_api_client.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client/feature/hive_market_coins_client.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client/feature/hive_payments_client.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client/core/hive_service.dart';
import 'package:crypto_portfolio/data/mapper/coingecko_mapper.dart';
import 'package:crypto_portfolio/data/mapper/hive_mapper.dart';
import 'package:crypto_portfolio/data/repository/coins_repository_impl.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';
import 'package:crypto_portfolio/main.dart';

void setupDiDataLayer() {
  //Coingecko
  getIt.registerSingleton<CoinGeckoApiClient>(CoinGeckoApiClient());

  //Hive
  getIt.registerSingleton<HiveService>(HiveService());
  getIt.registerSingleton<HiveMarketCoinsClient>(HiveMarketCoinsClient());
  getIt.registerSingleton<HivePaymentsClient>(HivePaymentsClient(hiveService: getIt.get<HiveService>()));

  //Mapper
  getIt.registerSingleton<CoingeckoMapper>(CoingeckoMapper());
  getIt.registerSingleton<HiveMapper>(HiveMapper());

  //Repository
  getIt.registerSingleton<CoinsRepository>(
    CoinsRepositoryImpl(
      coinGeckoApiClient: getIt.get<CoinGeckoApiClient>(),
      hiveApiClient: getIt.get<HiveApiClient>(),
      coingeckoMapper: getIt.get<CoingeckoMapper>(),
      hiveMapper: getIt.get<HiveMapper>(),
    ),
  );
}
