import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/market_coins/market_coin_entity.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_entity.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_local_usecase.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_payment_event.dart';

part 'add_payment_state.dart';

part 'add_payment_bloc.freezed.dart';

class AddPaymentBloc extends Bloc<AddPaymentEvent, AddPaymentState> {
  final GetMarketCoinsLocalUsecase getMarketCoinsListLocalUC;
  final AddPaymentUsecase addPaymentUC;

  AddPaymentBloc({
    required this.getMarketCoinsListLocalUC,
    required this.addPaymentUC,
  }) : super(AddPaymentState.initial(marketCoinsList: getMarketCoinsListLocalUC.call())) {
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
      await addPaymentUC.call(event.payment);
      emit(const AddPaymentState.success());
    } catch (e) {
      emit(const AddPaymentState.failure());
    }
  }
}
