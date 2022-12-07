import 'package:crypto_portfolio/domain/entity/payment.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class AddPayment {
  AddPayment({required this.coinsRepository});

  final CoinsRepository coinsRepository;

  Future<void> call(Payment payment) async {
    return await coinsRepository.addPayment(payment);
  }
}