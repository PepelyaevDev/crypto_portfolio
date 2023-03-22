import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_coins_loading_event.dart';
part 'portfolio_coins_loading_bloc.freezed.dart';

class PortfolioCoinsLoadingBloc extends Bloc<PortfolioCoinsLoadingEvent, bool> {
  final PortfolioRepo _portfolioRepo;
  PortfolioCoinsLoadingBloc(this._portfolioRepo) : super(false) {
    on<_Init>((event, emit) async {
      await for (final e in _portfolioRepo.updateCoinsLoadingSubject.stream) {
        emit(e);
      }
    }, transformer: droppable());
  }
}
