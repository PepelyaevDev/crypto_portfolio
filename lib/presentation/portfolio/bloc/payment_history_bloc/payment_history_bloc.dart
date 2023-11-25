import 'dart:async';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_history_event.dart';
part 'payment_history_state.dart';
part 'payment_history_bloc.freezed.dart';

class PaymentHistoryBloc extends Bloc<PaymentHistoryEvent, PaymentHistoryState> {
  final PortfolioRepo _portfolioRepo;
  late StreamSubscription<Either<Failure, CoinsEntity>> _coinsListener;
  PaymentHistoryBloc(this._portfolioRepo)
      : super(PaymentHistoryState(coins: _portfolioRepo.getCoinsLocal)) {
    on<_DeletePayment>((event, emit) {
      _portfolioRepo.updateHistory(event.payment);
    });
    on<_Update>((event, emit) {
      emit(PaymentHistoryState(coins: event.coins));
    });
    _coinsListener = _portfolioRepo.coinsSubject.stream.listen((event) {
      event.fold((l) => null, (r) => add(PaymentHistoryEvent.update(r)));
    });
  }

  @override
  Future<void> close() async {
    _coinsListener.cancel();
    super.close();
  }
}
