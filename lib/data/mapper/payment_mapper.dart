import 'package:crypto_portfolio/data/dto/hive/hive_payment.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';

class PaymentMapper {
  List<Payment> paymentsListHiveToUi(List<HivePayment> data) {
    return data
        .map((e) => Payment(
              symbol: e.symbol,
              dateTime: e.dateTime,
              type: _paymentTypeHiveToUI(e.type),
              amount: e.amount,
              numberOfCoins: e.numberOfCoins,
            ))
        .toList();
  }

  HivePayment paymentUiToHive(Payment data) {
    return HivePayment(
      symbol: data.symbol,
      dateTime: data.dateTime,
      type: _paymentTypeUiToHive(data.type),
      amount: data.amount,
      numberOfCoins: data.numberOfCoins,
    );
  }

  PaymentType _paymentTypeHiveToUI(HivePaymentType data) {
    switch (data) {
      case HivePaymentType.Withdraw:
        return PaymentType.Withdraw;
      case HivePaymentType.Deposit:
        return PaymentType.Deposit;
    }
  }

  HivePaymentType _paymentTypeUiToHive(PaymentType data) {
    switch (data) {
      case PaymentType.Withdraw:
        return HivePaymentType.Withdraw;
      case PaymentType.Deposit:
        return HivePaymentType.Deposit;
    }
  }
}
