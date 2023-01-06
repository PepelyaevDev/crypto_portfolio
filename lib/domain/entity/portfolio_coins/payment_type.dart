abstract class PaymentType {
  PaymentType(this.name);

  final String name;
}

class Withdraw extends PaymentType {
  Withdraw() : super(title);

  static const String title = 'withdraw';
}

class Deposit extends PaymentType {
  Deposit() : super(title);

  static const String title = 'deposit';
}

extension PaymentTypeExtension on String {
  PaymentType getPaymentType() {
    if (this == Withdraw.title) return Withdraw();
    if (this == Deposit.title) return Deposit();
    throw Exception();
  }
}
