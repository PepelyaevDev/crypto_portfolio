import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_payment_event.dart';

part 'delete_payment_state.dart';

part 'delete_payment_bloc.freezed.dart';

class DeletePaymentBloc extends Bloc<DeletePaymentEvent, DeletePaymentState> {
  final CoinsRepo _coinsRepo;

  DeletePaymentBloc(this._coinsRepo) : super(const DeletePaymentState.initial()) {
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
      await _coinsRepo.deletePayment(event.payment);
      emit(const DeletePaymentState.success());
    } catch (e) {
      emit(const DeletePaymentState.failure());
    }
  }
}
