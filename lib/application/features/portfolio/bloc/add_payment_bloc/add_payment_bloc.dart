import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_payment_event.dart';
part 'add_payment_state.dart';
part 'add_payment_bloc.freezed.dart';

class AddPaymentBloc extends Bloc<AddPaymentEvent, AddPaymentState> {
  final MarketRepo _marketRepo;
  final PortfolioRepo _portfolioRepo;
  AddPaymentBloc(this._marketRepo, this._portfolioRepo) : super(AddPaymentState.initial()) {
    on<_GetCoin>(_getCoin, transformer: droppable());
    on<_UpdateHistory>(_updateHistory, transformer: droppable());
    on<_Clear>(_clear);
  }

  Future<void> _getCoin(_GetCoin event, Emitter<AddPaymentState> emit) async {
    if (event.id == null) return;
    emit(AddPaymentState.loading());
    try {
      final CoinsEntity portfolioCoins = _portfolioRepo.getCoinsLocal;
      final CoinEntity currentCoin = portfolioCoins.list.firstWhere(
        (e) => e.id == event.id!,
        orElse: () => throw Exception(),
      );
      emit(AddPaymentState.success(currentCoin));
    } catch (_) {
      final result = await _marketRepo.getMarketCoinById(id: event.id!);
      result.fold(
        (error) => emit(AddPaymentState.error(error)),
        (marketCoin) => emit(AddPaymentState.success(marketCoin)),
      );
    }
  }

  void _updateHistory(_UpdateHistory event, _) {
    _portfolioRepo.addCoin(event.coin);
    _portfolioRepo.updateHistory(event.paymentEntity);
  }

  Future<void> _clear(_, Emitter<AddPaymentState> emit) async {
    emit(AddPaymentState.initial());
  }
}
