import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/core/screen_status.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_list_local.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_payment_event.dart';

part 'add_payment_state.dart';

class AddPaymentBloc extends Bloc<AddPaymentBlocEvent, AddPaymentBlocState> {
  AddPaymentBloc({
    required this.getMarketCoinsListLocalUC,
    required this.addPaymentUC,
  }) : super(AddPaymentBlocState(marketCoinsList: getMarketCoinsListLocalUC.call())) {
    on<AddPaymentEvent>(_addPayment, transformer: droppable());
  }

  final GetMarketCoinsListLocalUC getMarketCoinsListLocalUC;
  final AddPaymentUC addPaymentUC;

  Future<void> _addPayment(AddPaymentEvent event, Emitter<AddPaymentBlocState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      await addPaymentUC.call(event.payment);
      emit(state.copyWith(status: ScreenStatus.success));
    } catch (e) {
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
