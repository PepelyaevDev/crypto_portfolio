abstract class PaymentTypeEntity {
  PaymentTypeEntity(this.name);

  final String name;
}

class Withdraw extends PaymentTypeEntity {
  Withdraw() : super(title);

  static const String title = 'withdraw';
}

class Deposit extends PaymentTypeEntity {
  Deposit() : super(title);

  static const String title = 'deposit';
}

extension PaymentTypeExtension on String {
  PaymentTypeEntity getPaymentType() {
    if (this == Withdraw.title) return Withdraw();
    if (this == Deposit.title) return Deposit();
    throw Exception();
  }
}
