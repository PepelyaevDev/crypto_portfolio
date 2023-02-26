import 'package:crypto_portfolio/application/features/portfolio/pages/portfolio_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationTabs {
  static Map<BottomNavigationKey, BottomNavigationTab> data = {
    BottomNavigationKey.statistics: BottomNavigationTab(
      index: 0,
      screen: SizedBox(),
      icon: Icon(Icons.query_stats),
    ),
    BottomNavigationKey.portfolio: BottomNavigationTab(
      index: 1,
      screen: PortfolioPage(),
      icon: Icon(Icons.shopping_bag),
    ),
    BottomNavigationKey.news: BottomNavigationTab(
      index: 2,
      screen: SizedBox(),
      icon: Icon(Icons.newspaper),
    ),
  };
}

enum BottomNavigationKey { statistics, portfolio, news }

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
