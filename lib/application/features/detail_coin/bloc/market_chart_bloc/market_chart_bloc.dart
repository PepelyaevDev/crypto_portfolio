import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_chart_event.dart';
part 'market_chart_state.dart';
part 'market_chart_bloc.freezed.dart';

class MarketChartBloc extends Bloc<MarketChartEvent, MarketChartState> {
  final MarketRepo _marketRepo;
  final String _coinId;
  final Map<MarketChartDistance, MarketChartEntity?> _marketChartCache = {};
  MarketChartBloc(this._marketRepo, this._coinId) : super(const MarketChartState.loading()) {
    on<_SetDistance>(_setDistance, transformer: restartable());
    on<_Refresh>(_refresh, transformer: droppable());
  }

  void _setDistance(_SetDistance event, Emitter<MarketChartState> emit) async {
    MarketChartEntity? marketChartEntity = _marketChartCache[event.distance];
    if (marketChartEntity == null) {
      emit(const MarketChartState.loading());
      final result = await _marketRepo.getMarketChart(id: _coinId, distance: event.distance);
      result.fold(
        (l) => emit(MarketChartState.error(l)),
        (r) {
          _marketChartCache[event.distance] = r;
          emit(MarketChartState.success(r));
        },
      );
    } else {
      emit(MarketChartState.success(marketChartEntity));
    }
  }

  void _refresh(_Refresh event, Emitter<MarketChartState> emit) {
    _marketChartCache.clear();
    add(MarketChartEvent.setDistance(event.distance));
  }
}
