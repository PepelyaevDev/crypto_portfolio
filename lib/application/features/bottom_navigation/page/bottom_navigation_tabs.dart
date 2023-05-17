import 'package:crypto_portfolio/application/app/design_system/icons/app_icons.dart';
import 'package:crypto_portfolio/application/features/market/page/market_coins_page.dart';
import 'package:crypto_portfolio/application/features/news/page/news_page.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/portfolio_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationTabs {
  static Map<BottomNavigationKey, BottomNavigationTab> data = {
    BottomNavigationKey.market: BottomNavigationTab(
      index: 0,
      screen: MarketCoinsPage(),
      icon: _bottomNavigationIcon(AppIcons.chartLine),
    ),
    BottomNavigationKey.portfolio: BottomNavigationTab(
      index: 1,
      screen: PortfolioPage(),
      icon: _bottomNavigationIcon(AppIcons.briefcase),
    ),
    BottomNavigationKey.news: BottomNavigationTab(
      index: 2,
      screen: NewsPage(),
      icon: _bottomNavigationIcon(AppIcons.newspaper),
    ),
  };

  static Widget _bottomNavigationIcon(IconData iconData) => Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Icon(iconData, size: 18),
      );
}

enum BottomNavigationKey { market, portfolio, news }

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
