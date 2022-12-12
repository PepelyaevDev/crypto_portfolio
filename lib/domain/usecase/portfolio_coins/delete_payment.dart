import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class DeletePaymentUC {
  DeletePaymentUC({required this.coinsRepository});

  final CoinsRepository coinsRepository;

  Future<void> call(Payment payment) async {
    return await coinsRepository.deletePayment(payment);
  }
}
