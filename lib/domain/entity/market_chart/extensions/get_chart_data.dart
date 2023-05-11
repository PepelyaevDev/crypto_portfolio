import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';

extension GetChartData on MarketChartEntity {
  String dateFormatPattern() {
    final int difference = DateTime.now().difference(prices.first.time).inDays;
    if (difference < 2) return 'Hm';
    if (difference < 400) return 'd MMM';
    return 'MMM y';
  }
}
