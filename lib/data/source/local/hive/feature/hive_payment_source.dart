import 'package:crypto_portfolio/data/source/local/hive/core'
    '/hive_constants.dart';
import 'package:crypto_portfolio/data/source/local/hive/core'
    '/hive_service.dart';
import 'package:crypto_portfolio/data/dto/hive/hive_payment_dto.dart';
import 'package:hive_flutter/adapters.dart';

class HivePaymentSource {
  final _hivePaymentBox = Hive.box<HivePaymentDTO>(HiveConstants.hivePaymentDTOBoxName);

  List<HivePaymentDTO> getPaymentsList() {
    return _hivePaymentBox.values.toList();
  }

  Future<void> addPayment(HivePaymentDTO payment) async {
    await _hivePaymentBox.put(HiveService.getPaymentKey(payment.dateTime), payment);
  }

  Future<void> deletePayment(HivePaymentDTO payment) async {
    await _hivePaymentBox.delete(HiveService.getPaymentKey(payment.dateTime));
  }
}
