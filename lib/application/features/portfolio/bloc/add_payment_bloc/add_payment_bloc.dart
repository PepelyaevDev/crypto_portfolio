import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_payment_event.dart';

part 'add_payment_state.dart';

part 'add_payment_bloc.freezed.dart';

class AddPaymentBloc extends Bloc<AddPaymentEvent, AddPaymentState> {
  final CoinsRepo _coinsRepo;

  AddPaymentBloc(this._coinsRepo)
      : super(
          AddPaymentState.initial(coinsEntity: CoinsEntity(list: [], updateTime: DateTime.now())),
        ) {
    on<AddPaymentEvent>(
      (event, emit) => event.map(
        add: (event) => _addPayment(event, emit),
      ),
      transformer: droppable(),
    );
  }

  Future<void> _addPayment(AddPaymentEvent event, Emitter<AddPaymentState> emit) async {
    emit(const AddPaymentState.loading());
    try {
      await _coinsRepo.updateHistory(event.payment);
      emit(const AddPaymentState.success());
    } catch (e) {
      emit(const AddPaymentState.failure());
    }
  }
}
