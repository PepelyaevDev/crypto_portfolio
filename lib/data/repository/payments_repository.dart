import 'package:crypto_portfolio/data/datasource/local_data_source/hive_api_client/feature'
    '/hive_payments_client.dart';
import 'package:crypto_portfolio/data/mapper/payment_mapper.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/repository/payments_repository.dart';

class PaymentsRepositoryImpl implements PaymentsRepository {
  PaymentsRepositoryImpl({
    required this.hivePaymentsClient,
    required this.paymentMapper,
  });

  final HivePaymentsClient hivePaymentsClient;
  final PaymentMapper paymentMapper;

  @override
  List<Payment> getPaymentsList() {
    return paymentMapper.paymentsListHiveToUi(hivePaymentsClient.getPaymentsList());
  }

  @override
  Future<void> addPayment(Payment payment) async {
    await hivePaymentsClient.addPayment(paymentMapper.paymentUiToHive(payment));
  }

  @override
  Future<void> deletePayment(Payment payment) async {
    await hivePaymentsClient.deletePayment(paymentMapper.paymentUiToHive(payment));
  }
}
