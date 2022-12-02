import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:crypto_portfolio/coins_info/models/models.dart';
import 'package:coins_info_repository/coins_info_repository.dart' show CoinsInfoRepositoryClient;
import 'package:flutter_bloc/flutter_bloc.dart';

part 'coins_info_state.dart';

part 'coins_info_events.dart';

class CoinsInfoBloc extends Bloc<CoinsInfoEvent, CoinsInfoState> {
  CoinsInfoBloc(this._coinsInfoRepository) : super(CoinsInfoState()) {
    on<UpdateCoinsInfo>(_updateCoinsInfo, transformer: droppable());
  }

  final CoinsInfoRepositoryClient _coinsInfoRepository;

  Future<void> _updateCoinsInfo(_, Emitter<CoinsInfoState> emit) async {
    emit(state.copyWith(status: CoinsInfoStatus.loading));
    try {
      final CoinsList coinsList = CoinsList.fromRepository(
        await _coinsInfoRepository.getMarketCoinsList(),
      );
      emit(
        state.copyWith(
          status: CoinsInfoStatus.success,
          coinsList: coinsList,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CoinsInfoStatus.failure));
    }
  }
}
