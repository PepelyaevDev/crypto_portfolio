import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';

abstract class PaymentRepo {
  List<PaymentEntity> getPayments();
  Future<void> addPayment(PaymentEntity payment);
  Future<void> deletePayment(PaymentEntity payment);
}
