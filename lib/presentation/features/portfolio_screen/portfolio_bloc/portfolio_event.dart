part of 'portfolio_bloc.dart';

abstract class PortfolioEvent {}

class UpdatePortfolioCoinsList extends PortfolioEvent {}

class DeletePayment extends PortfolioEvent {
  final Payment payment;

  DeletePayment({required this.payment});
}

class AddPayment extends PortfolioEvent {
  final Payment payment;

  AddPayment({required this.payment});
}
