import 'dart:async';
import 'dart:ui';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/entity/search/search_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchDebouncer {
  final int milliseconds;
  Timer? _timer;

  SearchDebouncer({this.milliseconds = 800});

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final MarketRepo _marketRepo;
  SearchBloc(this._marketRepo) : super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      if (event.query.isEmpty) {
        emit(SearchState.initial());
        return;
      }
      emit(SearchState.loading());
      final result = await _marketRepo.search(event.query);
      result.fold(
        (l) => emit(SearchState.error(l)),
        (r) => emit(SearchState.success(r)),
      );
    }, transformer: restartable());
  }
}
