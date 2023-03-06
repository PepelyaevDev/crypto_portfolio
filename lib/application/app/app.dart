import 'package:crypto_portfolio/application/app/bloc/bottom_navigation_bloc/bottom_navigation_bloc.dart';
import 'package:crypto_portfolio/application/app/bloc/coins_bloc/coins_bloc.dart';
import 'package:crypto_portfolio/application/app/bottom_navigation/bottom_navigation_page.dart';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CryptoPortfolioApp extends StatelessWidget {
  const CryptoPortfolioApp({
    Key? key,
    required this.hiveApiClient,
    required this.geckoApiClient,
  }) : super(key: key);

  final HiveApiClient hiveApiClient;
  final GeckoApiClient geckoApiClient;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => CoinsRepo(hiveApiClient: hiveApiClient, geckoApiClient: geckoApiClient),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => BottomNavigationBloc()),
            BlocProvider(
                create: (context) =>
                    CoinsBloc(context.read<CoinsRepo>())..add(CoinsEvent.refreshData())),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const BottomNavigationPage(),
          ),
        );
      }),
    );
  }
}
