import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';

abstract class PaymentsRepository {
  List<Payment> getPaymentsList();
  Future<void> addPayment(Payment payment);
  Future<void> deletePayment(Payment payment);
}
