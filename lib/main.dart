import 'package:crypto_portfolio/data/datasource/hive_api_client/core/hive_init.dart';
import 'package:crypto_portfolio/data/di/setup_di_data_layer.dart';
import 'package:crypto_portfolio/domain/di/setup_di_domain_layer.dart';
import 'package:crypto_portfolio/presentation/di/setup_di_presentation_layer.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_screen/portfolio_screen/portfolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  await initHiveApiClient();
  setupDiDataLayer();
  setupDiDomainLayer();
  setupDiPresentationLayer();
  runApp(CryptoPortfolioApp());
}

class CryptoPortfolioApp extends StatelessWidget {
  CryptoPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: PortfolioScreen(),
    );
  }
}
