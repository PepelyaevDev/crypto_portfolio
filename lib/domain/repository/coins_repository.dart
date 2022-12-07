import 'package:crypto_portfolio/domain/entity/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/payment.dart';

abstract class CoinsRepository {
  Future<MarketCoinsList> getMarketCoinsListRemote ();
  MarketCoinsList getMarketCoinsListLocal ();
  Future<void> updateMarketCoinsListLocal (MarketCoinsList marketCoinsList);
  List<Payment> getPaymentsList ();
  Future<void> addPayment (Payment payment);
  Future<void> deletePayment (Payment payment);
}