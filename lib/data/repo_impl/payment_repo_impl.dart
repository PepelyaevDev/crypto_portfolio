import 'package:crypto_portfolio/data/dto/hive/hive_payment_dto.dart';
import 'package:crypto_portfolio/data/source/local/hive/feature/hive_payment_source.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/domain/repo/payment_repo.dart';

class PaymentRepoImpl implements PaymentRepo {
  PaymentRepoImpl({required this.hivePaymentsClient});

  final HivePaymentSource hivePaymentsClient;

  @override
  List<PaymentEntity> getPayments() {
    final List<HivePaymentDTO> list = hivePaymentsClient.getPaymentsList();
    return list.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> addPayment(PaymentEntity payment) async {
    await hivePaymentsClient.addPayment(HivePaymentDTO.fromEntity(payment));
  }

  @override
  Future<void> deletePayment(PaymentEntity payment) async {
    await hivePaymentsClient.deletePayment(HivePaymentDTO.fromEntity(payment));
  }
}
