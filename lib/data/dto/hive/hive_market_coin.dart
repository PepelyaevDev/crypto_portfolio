import 'package:hive/hive.dart';
import '../../datasource/hive_api_client/core/hive_constants.dart';

part 'hive_market_coin.g.dart';

@HiveType(typeId: hiveMarketCoinTypeId)
class HiveMarketCoin {
  const HiveMarketCoin({
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  @HiveField(0)
  final String symbol;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final double currentPrice;
}