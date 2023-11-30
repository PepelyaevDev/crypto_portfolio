import 'package:crypto_portfolio/common/assets/icons/app_icons.dart';
import 'package:crypto_portfolio/presentation/market_list/page/market_list_page.dart';
import 'package:crypto_portfolio/presentation/news/page/news_page.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/portfolio_list_page.dart';
import 'package:crypto_portfolio/presentation/settings/pages/settings_page.dart';
import 'package:crypto_portfolio/presentation/watchlist/page/watchlist_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationTabs {
  static Map<BottomNavigationKey, BottomNavigationTab> data = {
    BottomNavigationKey.market: BottomNavigationTab(
      index: 0,
      showGeckoWidget: true,
      screen: MarketListPage(),
      icon: AppIcons.chart_line,
    ),
    BottomNavigationKey.watchlist: BottomNavigationTab(
      index: 1,
      showGeckoWidget: true,
      screen: WatchlistPage(),
      icon: AppIcons.star_empty,
    ),
    BottomNavigationKey.portfolio: BottomNavigationTab(
      index: 2,
      showGeckoWidget: true,
      screen: PortfolioListPage(),
      icon: AppIcons.briefcase,
    ),
    BottomNavigationKey.news: BottomNavigationTab(
      index: 3,
      showGeckoWidget: false,
      screen: NewsPage(),
      icon: AppIcons.newspaper,
    ),
    BottomNavigationKey.settings: BottomNavigationTab(
      index: 4,
      showGeckoWidget: false,
      screen: SettingsPage(),
      icon: AppIcons.cog,
    ),
  };
}

enum BottomNavigationKey { market, watchlist, portfolio, news, settings }

class BottomNavigationTab {
  final int index;
  final bool showGeckoWidget;
  final Widget screen;
  final IconData icon;

  BottomNavigationTab({
    required this.index,
    required this.showGeckoWidget,
    required this.screen,
    required this.icon,
  });
}
