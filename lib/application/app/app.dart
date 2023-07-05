import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/features/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:crypto_portfolio/application/features/bottom_navigation/page/bottom_navigation_page.dart';
import 'package:crypto_portfolio/application/features/watchlist/bloc/watchlist_bloc.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/news_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CryptoPortfolioApp extends StatelessWidget {
  const CryptoPortfolioApp({
    Key? key,
    required this.hiveApiClient,
    required this.geckoApiClient,
    required this.cryptopanicApiClient,
  }) : super(key: key);

  final HiveApiClient hiveApiClient;
  final GeckoApiClient geckoApiClient;
  final CryptopanicApiClient cryptopanicApiClient;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => MarketRepo(hiveApiClient, geckoApiClient),
        ),
        RepositoryProvider(
          create: (_) => PortfolioRepo(hiveApiClient, geckoApiClient),
        ),
        RepositoryProvider(
          create: (_) => WatchlistRepo(hiveApiClient, geckoApiClient),
        ),
        RepositoryProvider(
          create: (_) => NewsRepo(cryptopanicApiClient),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => BottomNavigationBloc()),
              BlocProvider(
                create: (context) => WatchlistBloc(context.read<WatchlistRepo>()),
              ),
            ],
            child: MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSwatch().copyWith(
                  primary: AppColors.blueLight,
                ),
              ),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: const BottomNavigationPage(),
            ),
          );
        },
      ),
    );
  }
}
