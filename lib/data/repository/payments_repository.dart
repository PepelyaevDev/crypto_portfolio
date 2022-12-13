import 'package:crypto_portfolio/data/datasource/hive_api_client/feature/hive_payments_client.dart';
import 'package:crypto_portfolio/data/mapper/hive_mapper.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';

class PaymentsRepositoryImpl implements PaymentsRepository {
  PaymentsRepositoryImpl({
    required this.hivePaymentsClient,
    required this.hiveMapper,
  });

  final HivePaymentsClient hivePaymentsClient;
  final HiveMapper hiveMapper;

  @override
  List<Payment> getPaymentsList() {
    return hiveMapper.paymentsListDtoToUi(hivePaymentsClient.getPaymentsList());
  }

  @override
  Future<void> addPayment(Payment payment) async {
    await hivePaymentsClient.addPayment(hiveMapper.paymentUiToDto(payment));
  }

  @override
  Future<void> deletePayment(Payment payment) async {
    await hivePaymentsClient.deletePayment(hiveMapper.paymentUiToDto(payment));
  }
}
