import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/core/screen_status.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'delete_payment_event.dart';

part 'delete_payment_state.dart';

class DeletePaymentBloc extends Bloc<DeletePaymentBlocEvent, DeletePaymentBlocState> {
  DeletePaymentBloc({required this.deletePaymentUC}) : super(DeletePaymentBlocState()) {
    on<DeletePaymentEvent>(_deletePayment, transformer: droppable());
  }

  final DeletePaymentUC deletePaymentUC;

  Future<void> _deletePayment(DeletePaymentEvent event, Emitter<DeletePaymentBlocState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      await deletePaymentUC.call(event.payment);
      emit(state.copyWith(status: ScreenStatus.success));
    } catch (e) {
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
