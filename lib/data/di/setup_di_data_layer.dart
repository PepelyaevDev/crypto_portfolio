import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/feature'
    '/hive_market_coins_client.dart';
import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/feature'
    '/hive_payments_client.dart';
import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/core'
    '/hive_service.dart';
import 'package:crypto_portfolio/data/datasource/remote_data_source/coingecko_source/market_coins/market_coins_remote_source.dart';
import 'package:crypto_portfolio/data/datasource/remote_data_source/dio/dio_clients.dart';
import 'package:crypto_portfolio/data/datasource/remote_data_source/dio/dio_constants.dart';
import 'package:crypto_portfolio/data/mapper/market_coins_mapper.dart';
import 'package:crypto_portfolio/data/mapper/payment_mapper.dart';
import 'package:crypto_portfolio/data/repository/market_coins_repository.dart';
import 'package:crypto_portfolio/data/repository/payments_repository.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:dio/dio.dart';

void setupDiDataLayer() {
  //Coingecko
  getIt.registerSingleton<CoingeckoDioClient>(CoingeckoDioClient(Dio(
    BaseOptions(
      baseUrl: DioConstants.coingeckoBaseUrl,
      connectTimeout: DioConstants.connectionTimeout,
      receiveTimeout: DioConstants.receiveTimeout,
      responseType: ResponseType.json,
      validateStatus: (status) => (status ?? 500) < 500,
    ),
  )));
  getIt.registerSingleton<MarketCoinsRemoteSource>(
      MarketCoinsRemoteSource(getIt.get<CoingeckoDioClient>()));

  //Hive
  getIt.registerSingleton<HiveService>(HiveService());
  getIt.registerSingleton<HiveMarketCoinsClient>(HiveMarketCoinsClient());
  getIt.registerSingleton<HivePaymentsClient>(
      HivePaymentsClient(hiveService: getIt.get<HiveService>()));

  //Mapper
  getIt.registerSingleton<MarketCoinsMapper>(MarketCoinsMapper());
  getIt.registerSingleton<PaymentMapper>(PaymentMapper());

  //Repository
  getIt.registerSingleton<PaymentsRepository>(
    PaymentsRepositoryImpl(
      hivePaymentsClient: getIt.get<HivePaymentsClient>(),
      paymentMapper: getIt.get<PaymentMapper>(),
    ),
  );
  getIt.registerSingleton<MarketCoinsRepository>(
    MarketCoinsRepositoryImpl(
      marketCoinsRemoteSource: getIt.get<MarketCoinsRemoteSource>(),
      marketCoinsMapper: getIt.get<MarketCoinsMapper>(),
      hiveMarketCoinsClient: getIt.get<HiveMarketCoinsClient>(),
    ),
  );
}
