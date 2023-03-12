import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension CoinData on CoinEntity {
  double get averagePrice => totalAmount == 0 ? 0 : moneyInvested / totalAmount;
  double get priceAllCoins => totalAmount * currentPrice;
}
