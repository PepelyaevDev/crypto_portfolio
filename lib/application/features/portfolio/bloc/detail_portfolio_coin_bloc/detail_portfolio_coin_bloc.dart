import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_portfolio_coin_event.dart';
part 'detail_portfolio_coin_state.dart';
part 'detail_portfolio_coin_bloc.freezed.dart';

class DetailPortfolioCoinBloc extends Bloc<DetailPortfolioCoinEvent, DetailPortfolioCoinState> {
  DetailPortfolioCoinBloc() : super(const DetailPortfolioCoinState.initial()) {
    on<DetailPortfolioCoinEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
