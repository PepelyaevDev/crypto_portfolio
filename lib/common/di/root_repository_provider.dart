import 'package:crypto_portfolio/common/di/app_data_source.dart';
import 'package:crypto_portfolio/domain/repo/locale_repo.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/news_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:crypto_portfolio/domain/repo/settings_repo.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootRepositoryProvider extends StatelessWidget {
  const RootRepositoryProvider({
    super.key,
    required this.appDataSource,
    required this.child,
  });

  final AppDataSource appDataSource;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => MarketRepo(
            appDataSource.hiveApiClient,
            appDataSource.geckoApiClient,
          ),
        ),
        RepositoryProvider(
          create: (_) => PortfolioRepo(
            appDataSource.hiveApiClient,
            appDataSource.geckoApiClient,
          ),
        ),
        RepositoryProvider(
          create: (_) => WatchlistRepo(
            appDataSource.hiveApiClient,
            appDataSource.geckoApiClient,
          ),
        ),
        RepositoryProvider(
          create: (_) => NewsRepo(
            appDataSource.cryptopanicApiClient,
          ),
        ),
        RepositoryProvider(
          create: (_) => LocaleRepo(
            appDataSource.hiveApiClient,
          ),
        ),
        RepositoryProvider(
          create: (_) => SettingsRepo(
            appDataSource.preferencesApiClient,
          ),
        ),
      ],
      child: child,
    );
  }
}
