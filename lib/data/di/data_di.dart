import 'package:crypto_portfolio/data/source/local/hive/feature/hive_market_coin_source.dart';
import 'package:crypto_portfolio/data/source/local/hive/feature/hive_payment_source.dart';
import 'package:crypto_portfolio/data/source/remote/gecko/market_coins/gecko_market_coin_source.dart';
import 'package:crypto_portfolio/data/source/remote/dio/dio_client.dart';
import 'package:crypto_portfolio/data/source/remote/dio/dio_constants.dart';
import 'package:crypto_portfolio/data/repo_impl/market_coin_repo_impl.dart';
import 'package:crypto_portfolio/data/repo_impl/payment_repo_impl.dart';
import 'package:crypto_portfolio/domain/repository/market_coins_repository.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:dio/dio.dart';

class DataDi {
  static void call() {
    //Gecko
    getIt.registerSingleton<GeckoDioClient>(GeckoDioClient(Dio(
      BaseOptions(
        baseUrl: DioConstants.geckoBaseUrl,
        connectTimeout: DioConstants.connectionTimeout,
        receiveTimeout: DioConstants.receiveTimeout,
        responseType: ResponseType.json,
        validateStatus: (status) => (status ?? 500) < 500,
      ),
    )));
    getIt.registerSingleton<GeckoMarketCoinSource>(
        GeckoMarketCoinSource(getIt.get<GeckoDioClient>()));

    //Hive
    getIt.registerSingleton<HiveMarketCoinSource>(HiveMarketCoinSource());
    getIt.registerSingleton<HivePaymentSource>(HivePaymentSource());

    //Repository
    getIt.registerSingleton<PaymentsRepository>(
      PaymentRepoImpl(hivePaymentsClient: getIt.get<HivePaymentSource>()),
    );
    getIt.registerSingleton<MarketCoinsRepository>(
      MarketCoinRepoImpl(
        geckoMarketCoinSource: getIt.get<GeckoMarketCoinSource>(),
        hiveMarketCoinSource: getIt.get<HiveMarketCoinSource>(),
      ),
    );
  }
}
