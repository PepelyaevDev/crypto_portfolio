import 'package:crypto_portfolio/data/gecko_api/dto/market_chart/market_chart_dto.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';

extension MarketChartDtoToEntity on MarketChartDTO {
  MarketChartEntity toEntity(MarketChartDistance distance) {
    return MarketChartEntity(
      prices: prices
          .map((e) => MarketChartPriceEntity(
                time: DateTime.fromMillisecondsSinceEpoch(e.timestamp),
                price: e.price,
              ))
          .toList(),
      updateTime: DateTime.now(),
      distance: distance,
    );
  }
}
