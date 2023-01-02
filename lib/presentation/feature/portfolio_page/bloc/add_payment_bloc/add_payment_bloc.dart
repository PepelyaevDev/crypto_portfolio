import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/feature/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/usecase/market_coins/get_market_coins_list_local.dart';
import 'package:crypto_portfolio/domain/usecase/portfolio_coins/add_payment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_payment_event.dart';

part 'add_payment_state.dart';

part 'add_payment_bloc.freezed.dart';

class AddPaymentBloc extends Bloc<AddPaymentEvent, AddPaymentState> {
  final GetMarketCoinsListLocalUC getMarketCoinsListLocalUC;
  final AddPaymentUC addPaymentUC;

  AddPaymentBloc({
    required this.getMarketCoinsListLocalUC,
    required this.addPaymentUC,
  }) : super(AddPaymentState.initial(getMarketCoinsListLocalUC.call())) {
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
