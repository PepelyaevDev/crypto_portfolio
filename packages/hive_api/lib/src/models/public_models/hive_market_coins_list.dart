import 'package:hive_api/hive_api.dart';

class HiveMarketCoinsList {
  const HiveMarketCoinsList({required this.coins});

  factory HiveMarketCoinsList.fromHive(Map<dynamic, HiveMarketCoin> data) {
    return HiveMarketCoinsList(
      coins: data.keys
          .map(
            (e) => HiveMarketCoin(
              symbol: data[e]!.symbol,
              name: data[e]!.name,
              image: data[e]!.image,
              currentPrice: data[e]!.currentPrice,
            ),
          )
          .toList(),
    );
  }

  final List<HiveMarketCoin> coins;
}
