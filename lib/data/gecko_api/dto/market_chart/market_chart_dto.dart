class MarketChartDTO {
  final List<MarketChartPriceDTO> prices;
  MarketChartDTO({required this.prices});

  factory MarketChartDTO.fromJson(Map<String, dynamic> json) {
    final List<MarketChartPriceDTO> list = [];
    for (final e in json['prices']) {
      list.add(MarketChartPriceDTO(timestamp: e.first, price: e.last));
    }
    return MarketChartDTO(prices: list);
  }
}

class MarketChartPriceDTO {
  final int timestamp;
  final double price;
  MarketChartPriceDTO({
    required this.timestamp,
    required this.price,
  });
}
