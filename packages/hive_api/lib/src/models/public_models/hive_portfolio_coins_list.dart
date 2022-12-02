import 'package:hive_api/hive_api.dart';

class HivePortfolioCoinsList {
  const HivePortfolioCoinsList({required this.coins});

  factory HivePortfolioCoinsList.fromHive(Map<dynamic, HivePaymentHistory> data) {
    return HivePortfolioCoinsList(
      coins: data.keys
          .map(
            (e) => HivePortfolioCoin(symbol: e, history: data[e]!),
          )
          .toList(),
    );
  }

  final List<HivePortfolioCoin> coins;
}

class HivePortfolioCoin {
  const HivePortfolioCoin({required this.symbol, required this.history});

  final String symbol;
  final HivePaymentHistory history;
}
