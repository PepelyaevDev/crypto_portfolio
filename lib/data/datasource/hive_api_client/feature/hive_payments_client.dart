import 'package:crypto_portfolio/data/datasource/hive_api_client/core/hive_constants.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client/core/hive_service.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment.dart';
import 'package:hive_flutter/adapters.dart';

class HivePaymentsClient {
  HivePaymentsClient({required this.hiveService});

  late final HiveService hiveService;
  final _hivePaymentBox = Hive.box<HivePayment>(hivePaymentBoxName);

  List<HivePayment> getPaymentsList() {
    return _hivePaymentBox.values.toList();
  }

  Future<void> addPayment(HivePayment payment) async {
    await _hivePaymentBox.put(hiveService.getPaymentKey(payment.dateTime), payment);
  }

  Future<void> deletePayment(HivePayment payment) async {
    await _hivePaymentBox.delete(hiveService.getPaymentKey(payment.dateTime));
  }
}
