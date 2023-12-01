import 'package:crypto_portfolio/presentation/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:crypto_portfolio/presentation/news/bloc/news_bloc/news_bloc.dart';
import 'package:crypto_portfolio/presentation/settings/bloc/locale_bloc/locale_bloc.dart';
import 'package:crypto_portfolio/presentation/settings/bloc/settings_bloc/settings_bloc.dart';
import 'package:crypto_portfolio/presentation/stable_coins/bloc/stable_bloc.dart';
import 'package:crypto_portfolio/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:crypto_portfolio/domain/repo/locale_repo.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/news_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:crypto_portfolio/domain/repo/settings_repo.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootBlocProvider extends StatelessWidget {
  const RootBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavigationBloc(context.read<PortfolioRepo>()),
        ),
        BlocProvider(create: (context) => SettingsBloc(context.read<SettingsRepo>())),
        BlocProvider(create: (context) => StableBloc(context.read<MarketRepo>())),
        BlocProvider(
          create: (context) => WatchlistBloc(context.read<WatchlistRepo>()),
        ),
        BlocProvider(
          create: (context) => NewsBloc(
            context.read<NewsRepo>(),
            context.read<LocaleRepo>(),
            context.read<PortfolioRepo>(),
            context.read<WatchlistRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => LocaleBloc(context.read<LocaleRepo>()),
        ),
      ],
      child: child,
    );
  }
}
