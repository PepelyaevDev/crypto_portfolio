import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';

class DeletePaymentUC {
  DeletePaymentUC({required this.paymentsRepository});

  final PaymentsRepository paymentsRepository;

  Future<void> call(Payment payment) async {
    return await paymentsRepository.deletePayment(payment);
  }
}
