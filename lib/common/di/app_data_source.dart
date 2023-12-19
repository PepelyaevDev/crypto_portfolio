import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/firebase_api/app_config.dart';
import 'package:crypto_portfolio/data/firebase_api/firebase_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/hive_api_client.dart';
import 'package:crypto_portfolio/data/preferences_api/preferences_api_client.dart';

class AppDataSource {
  const AppDataSource({
    required this.hiveApiClient,
    required this.preferencesApiClient,
    required this.geckoApiClient,
    required this.cryptopanicApiClient,
  });

  final HiveApiClient hiveApiClient;
  final PreferencesApiClient preferencesApiClient;
  final GeckoApiClient geckoApiClient;
  final CryptopanicApiClient cryptopanicApiClient;

  static Future<AppDataSource> get getInstance async {
    final AppConfig appConfig = await FirebaseApiClient.getAppConfig;
    final hiveApiClient = await HiveApiClient.getClient;
    final preferencesApiClient = await PreferencesApiClient.getClient;
    final geckoApiClient = GeckoApiClient.getClient(appConfig.geckoConfig);
    final cryptopanicApiClient = CryptopanicApiClient.getClient(appConfig.panicConfig);
    return AppDataSource(
      hiveApiClient: hiveApiClient,
      preferencesApiClient: preferencesApiClient,
      geckoApiClient: geckoApiClient,
      cryptopanicApiClient: cryptopanicApiClient,
    );
  }
}
