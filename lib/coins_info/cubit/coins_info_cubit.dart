import 'package:equatable/equatable.dart';
import 'package:crypto_portfolio/coins_info/models/coins_list.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:coins_info_repository/coins_info_repository.dart' show CoinsInfoRepository;
import 'package:json_annotation/json_annotation.dart';

part 'coins_info_state.dart';
part 'coins_info_cubit.g.dart';

class CoinsInfoCubit extends HydratedCubit<CoinsInfoState> {
  CoinsInfoCubit(this._coinsInfoRepository) : super(CoinsInfoState());

  final CoinsInfoRepository _coinsInfoRepository;

  Future<void> getCoins() async {
    emit(state.copyWith(status: CoinsInfoStatus.loading));
    try {
      final coinsList = CoinsList.fromRepository(
        await _coinsInfoRepository.getCoins(),
      );
      emit(
        state.copyWith(
          status: CoinsInfoStatus.success,
          coinsList: coinsList,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: CoinsInfoStatus.failure));
    }
  }

  @override
  CoinsInfoState fromJson(Map<String, dynamic> json) => CoinsInfoState.fromJson(json);

  @override
  Map<String, dynamic> toJson(CoinsInfoState state) => state.toJson();
}
