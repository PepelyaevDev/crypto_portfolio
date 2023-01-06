import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment.dart';

abstract class PaymentsRepository {
  List<Payment> getPayments();
  Future<void> addPayment(Payment payment);
  Future<void> deletePayment(Payment payment);
}
