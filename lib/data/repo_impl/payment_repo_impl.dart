import 'package:crypto_portfolio/data/dto/hive/hive_payment_dto.dart';
import 'package:crypto_portfolio/data/source/local/hive/feature/hive_payment_source.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';

class PaymentRepoImpl implements PaymentsRepository {
  PaymentRepoImpl({required this.hivePaymentsClient});

  final HivePaymentSource hivePaymentsClient;

  @override
  List<Payment> getPayments() {
    final List<HivePaymentDTO> list = hivePaymentsClient.getPaymentsList();
    return list.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> addPayment(Payment payment) async {
    await hivePaymentsClient.addPayment(HivePaymentDTO.fromEntity(payment));
  }

  @override
  Future<void> deletePayment(Payment payment) async {
    await hivePaymentsClient.deletePayment(HivePaymentDTO.fromEntity(payment));
  }
}
