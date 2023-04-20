import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_portfolio_coin_event.dart';
part 'detail_portfolio_coin_state.dart';
part 'detail_portfolio_coin_bloc.freezed.dart';

class DetailPortfolioCoinBloc extends Bloc<DetailPortfolioCoinEvent, DetailPortfolioCoinState> {
  DetailPortfolioCoinBloc() : super(const DetailPortfolioCoinState.loading()) {
    on<DetailPortfolioCoinEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
