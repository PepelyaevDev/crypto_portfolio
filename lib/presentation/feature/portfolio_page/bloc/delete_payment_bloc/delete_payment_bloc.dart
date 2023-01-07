import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/delete_payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'delete_payment_event.dart';

part 'delete_payment_state.dart';

part 'delete_payment_bloc.freezed.dart';

class DeletePaymentBloc extends Bloc<DeletePaymentEvent, DeletePaymentState> {
  final DeletePaymentUsecase deletePaymentUC;

  DeletePaymentBloc({required this.deletePaymentUC}) : super(const DeletePaymentState.initial()) {
    on<DeletePaymentEvent>(
      (event, emit) => event.map(
        delete: (event) => _deletePayment(event, emit),
      ),
      transformer: droppable(),
    );
  }

  Future<void> _deletePayment(DeletePaymentEvent event, Emitter<DeletePaymentState> emit) async {
    emit(const DeletePaymentState.loading());
    try {
      await deletePaymentUC.call(event.payment);
      emit(const DeletePaymentState.success());
    } catch (e) {
      emit(const DeletePaymentState.failure());
    }
  }
}
