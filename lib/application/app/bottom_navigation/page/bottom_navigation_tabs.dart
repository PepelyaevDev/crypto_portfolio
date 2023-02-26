import 'package:crypto_portfolio/application/features/portfolio/pages/portfolio_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationTabs {
  static Map<BottomNavigationKey, BottomNavigationTab> data = {
    BottomNavigationKey.stats: BottomNavigationTab(
      index: 0,
      label: 'Stats',
      screen: SizedBox(),
      icon: Icon(Icons.query_stats),
    ),
    BottomNavigationKey.portfolio: BottomNavigationTab(
      index: 1,
      label: 'Portfolio',
      screen: PortfolioPage(),
      icon: Icon(Icons.shopping_bag),
    ),
    BottomNavigationKey.news: BottomNavigationTab(
      index: 2,
      label: 'News',
      screen: SizedBox(),
      icon: Icon(Icons.newspaper),
    ),
  };
}

enum BottomNavigationKey { stats, portfolio, news }

class BottomNavigationTab {
  final int index;
  final String label;
  final Widget screen;
  final Widget icon;

  BottomNavigationTab({
    required this.index,
    required this.label,
    required this.screen,
    required this.icon,
  });
}
