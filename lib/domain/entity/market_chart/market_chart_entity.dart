enum MarketChartDistance {
  d1('1'),
  d7('7'),
  d30('30'),
  d90('90'),
  d365('365'),
  d1095('1095'),
  d1825('1825'),
  dMax('max');

  const MarketChartDistance(this.days);
  final String days;
}

class MarketChartEntity {
  final List<MarketChartPriceEntity> prices;
  final DateTime updateTime;
  final MarketChartDistance distance;
  const MarketChartEntity({
    required this.prices,
    required this.updateTime,
    required this.distance,
  });
}

class MarketChartPriceEntity {
  final DateTime time;
  final double price;
  const MarketChartPriceEntity({
    required this.time,
    required this.price,
  });
}
