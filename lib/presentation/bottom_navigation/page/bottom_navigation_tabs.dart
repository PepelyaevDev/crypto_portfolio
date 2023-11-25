import 'package:crypto_portfolio/common/assets/icons/app_icons.dart';
import 'package:crypto_portfolio/presentation/market/page/market_coins_page.dart';
import 'package:crypto_portfolio/presentation/news/page/news_page.dart';
import 'package:crypto_portfolio/presentation/portfolio/pages/portfolio_page.dart';
import 'package:crypto_portfolio/presentation/settings/pages/settings_page.dart';
import 'package:crypto_portfolio/presentation/watchlist/page/watchlist_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationTabs {
  static Map<BottomNavigationKey, BottomNavigationTab> data = {
    BottomNavigationKey.market: BottomNavigationTab(
      index: 0,
      screen: MarketCoinsPage(),
      icon: _bottomNavigationIcon(AppIcons.chart_line),
    ),
    BottomNavigationKey.watchlist: BottomNavigationTab(
      index: 1,
      screen: WatchlistPage(),
      icon: _bottomNavigationIcon(AppIcons.star_empty),
    ),
    BottomNavigationKey.portfolio: BottomNavigationTab(
      index: 2,
      screen: PortfolioPage(),
      icon: _bottomNavigationIcon(AppIcons.briefcase),
    ),
    BottomNavigationKey.news: BottomNavigationTab(
      index: 3,
      screen: NewsPage(),
      icon: _bottomNavigationIcon(AppIcons.newspaper),
    ),
    BottomNavigationKey.settings: BottomNavigationTab(
      index: 4,
      screen: SettingsPage(),
      icon: _bottomNavigationIcon(AppIcons.cog),
    ),
  };

  static Widget _bottomNavigationIcon(IconData iconData) => Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Icon(iconData, size: 18),
      );
}

enum BottomNavigationKey { market, watchlist, portfolio, news, settings }

class BottomNavigationTab {
  final int index;
  final Widget screen;
  final Widget icon;

  BottomNavigationTab({
    required this.index,
    required this.screen,
    required this.icon,
  });
}
