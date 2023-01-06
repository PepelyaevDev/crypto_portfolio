import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';

class AddPaymentUC {
  AddPaymentUC({required this.paymentsRepository});

  final PaymentsRepository paymentsRepository;

  Future<void> call(Payment payment) async {
    return await paymentsRepository.addPayment(payment);
  }
}
