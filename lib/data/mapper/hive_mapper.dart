import 'package:crypto_portfolio/data/dto/hive/hive_market_coin.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment.dart';
import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';

class HiveMapper {
  MarketCoinsList marketCoinsListDtoToUi(List<HiveMarketCoin> data) {
    return MarketCoinsList(
      coins: data
          .map((e) => MarketCoin(
                symbol: e.symbol,
                name: e.name,
                image: e.image,
                currentPrice: e.currentPrice,
              ))
          .toList(),
    );
  }

  List<HiveMarketCoin> marketCoinsListUiToDto(MarketCoinsList data) {
    return data.coins
        .map((e) => HiveMarketCoin(
              symbol: e.symbol,
              name: e.name,
              image: e.image,
              currentPrice: e.currentPrice,
            ))
        .toList();
  }

  List<Payment> paymentsListDtoToUi(List<HivePayment> data) {
    return data
        .map((e) => Payment(
              symbol: e.symbol,
              dateTime: e.dateTime,
              type: _paymentTypeDtoToUI(e.type),
              amount: e.amount,
              numberOfCoins: e.numberOfCoins,
            ))
        .toList();
  }

  HivePayment paymentUiToDto(Payment data) {
    return HivePayment(
      symbol: data.symbol,
      dateTime: data.dateTime,
      type: _paymentTypeUiToDto(data.type),
      amount: data.amount,
      numberOfCoins: data.numberOfCoins,
    );
  }

  PaymentType _paymentTypeDtoToUI(HivePaymentType data) {
    switch (data) {
      case HivePaymentType.Withdraw:
        return PaymentType.Withdraw;
      case HivePaymentType.Deposit:
        return PaymentType.Deposit;
    }
  }

  HivePaymentType _paymentTypeUiToDto(PaymentType data) {
    switch (data) {
      case PaymentType.Withdraw:
        return HivePaymentType.Withdraw;
      case PaymentType.Deposit:
        return HivePaymentType.Deposit;
    }
  }
}
