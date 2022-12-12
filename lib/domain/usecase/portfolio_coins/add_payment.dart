import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class AddPaymentUC {
  AddPaymentUC({required this.coinsRepository});

  final CoinsRepository coinsRepository;

  Future<void> call(Payment payment) async {
    return await coinsRepository.addPayment(payment);
  }
}
