import 'package:crypto_portfolio/data/datasource/coingecko_api_client.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client.dart';
import 'package:crypto_portfolio/data/mapper/coingecko_mapper.dart';
import 'package:crypto_portfolio/data/mapper/hive_mapper.dart';
import 'package:crypto_portfolio/data/repository/coins_repository_impl.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';
import 'package:crypto_portfolio/main.dart';

void setupDiDataLayer() {
  //Datasource
  getIt.registerSingleton<CoinGeckoApiClient>(CoinGeckoApiClient());
  getIt.registerSingleton<HiveApiClient>(HiveApiClient());

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
