import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/domain/repo/payment_repo.dart';

class AddPaymentUsecase {
  AddPaymentUsecase({required this.paymentsRepository});

  final PaymentRepo paymentsRepository;

  Future<void> call(PaymentEntity payment) async {
    return await paymentsRepository.addPayment(payment);
  }
}
