import 'package:crypto_portfolio/application/features/portfolio/pages/portfolio_page.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CryptoPortfolioApp extends StatelessWidget {
  const CryptoPortfolioApp({
    Key? key,
    required this.box,
    required this.geckoApiClient,
  }) : super(key: key);

  final Box box;
  final GeckoApiClient geckoApiClient;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => CoinsRepo(box: box, geckoApiClient: geckoApiClient),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const PortfolioPage(),
      ),
    );
  }
}
