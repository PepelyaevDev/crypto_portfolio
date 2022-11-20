import 'package:equatable/equatable.dart';
import 'package:coins_info_repository/coins_info_repository.dart' as coins_info_repository;
import 'package:json_annotation/json_annotation.dart';

part 'coins_list.g.dart';

@JsonSerializable(explicitToJson: true)
class CoinsList extends Equatable {
  const CoinsList({required this.lastUpdated, required this.coins});

  factory CoinsList.fromRepository(coins_info_repository.CoinsList coinsList) {
    return CoinsList(
      lastUpdated: DateTime.now(),
      coins: coinsList.coins
          .map(
            (e) => Coin(
              id: e.id,
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ),
          )
          .toList(),
    );
  }

  static final empty = CoinsList(
    lastUpdated: DateTime(0),
    coins: const [],
  );

  factory CoinsList.fromJson(Map<String, dynamic> json) => _$CoinsListFromJson(json);

  Map<String, dynamic> toJson() => _$CoinsListToJson(this);

  final DateTime lastUpdated;
  final List<Coin> coins;

  @override
  List<Object> get props => [lastUpdated, coins];
}

@JsonSerializable(explicitToJson: true)
class Coin extends Equatable {
  const Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
  });

  final String id;
  final String symbol;
  final String name;
  final String image;
  final double currentPrice;

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);

  @override
  List<Object> get props => [id, symbol, name, image, currentPrice];
}
