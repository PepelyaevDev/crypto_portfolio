import 'package:crypto_portfolio/data/source/local/hive/core/hive_constants.dart';
import 'package:crypto_portfolio/domain/entity/market_coins/market_coins_list.dart';
import 'package:hive/hive.dart';

part 'hive_market_coin_dto.g.dart';

@HiveType(typeId: HiveConstants.hiveMarketCoinDTOTypeId)
class HiveMarketCoinDTO {
  const HiveMarketCoinDTO({
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  factory HiveMarketCoinDTO.fromEntity(MarketCoin coin) => HiveMarketCoinDTO(
        symbol: coin.symbol,
        name: coin.name,
        image: coin.image,
        currentPrice: coin.currentPrice,
      );

  MarketCoin toEntity() =>
      MarketCoin(symbol: symbol, name: name, image: image, currentPrice: currentPrice);

  @HiveField(0)
  final String symbol;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final double currentPrice;
}
