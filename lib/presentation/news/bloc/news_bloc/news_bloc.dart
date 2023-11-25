import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_portfolio/common/utils/extensions/completer_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/entity/news/news_entity.dart';
import 'package:crypto_portfolio/domain/repo/locale_repo.dart';
import 'package:crypto_portfolio/domain/repo/news_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepo _newsRepo;
  final LocaleRepo _localeRepo;
  final PortfolioRepo _portfolioRepo;
  final WatchlistRepo _watchlistRepo;
  NewsBloc(
    this._newsRepo,
    this._localeRepo,
    this._portfolioRepo,
    this._watchlistRepo,
  ) : super(NewsState.loading()) {
    on<_Init>(_init);
    on<_Refresh>(_refresh);
    on<_Update>(_update, transformer: droppable());
  }
  late _Init _initData;

  void _init(_Init event, Emitter<NewsState> emit) async {
    _initData = event;
    emit(NewsState.loading());
    await _getFirstData(emit);
  }

  void _refresh(_Refresh event, Emitter<NewsState> emit) async {
    await _getFirstData(emit);
    event.completer.close();
  }

  void _update(_Update event, Emitter<NewsState> emit) async {
    if (event.oldList.nextPage == null) {
      return;
    }
    final news = await _newsRepo.updateNews(event.oldList);
    news.fold(
      (l) => emit(NewsState.error(news: event.oldList, error: l)),
      (r) => emit(NewsState.success(r, DateTime.now())),
    );
  }

  Future<void> _getFirstData(Emitter<NewsState> emit) async {
    final List<String>? currencies = _getCurrencies(
      _initData.category,
      _initData.symbol,
    );
    if (currencies == null) {
      emit(NewsState.noCoins());
    } else {
      final news = await _newsRepo.updateNews(
        NewsListEntity(
          list: [],
          updateTime: DateTime.now(),
          currencies: currencies,
          locales: _localeRepo.newsSelectedLocales.map((e) => e.name).toList(),
          nextPage: 1,
        ),
      );
      news.fold(
        (l) => emit(NewsState.error(error: l)),
        (r) => emit(NewsState.success(r, DateTime.now())),
      );
    }
  }

  List<String>? _getCurrencies(NewsCategory category, String? symbol) {
    switch (category) {
      case NewsCategory.all:
        return [];
      case NewsCategory.watchlist:
        final List<CoinId> watchlistSymbols = _watchlistRepo.getIds;
        final List<CoinId> portfolioSymbols =
            _portfolioRepo.getCoinsLocal.list.map((e) => e.id).toList();
        return _getCurrenciesFromIds([
          ...watchlistSymbols,
          ...portfolioSymbols,
        ]);
      case NewsCategory.coin:
        return [symbol!];
    }
  }

  List<String>? _getCurrenciesFromIds(List<CoinId> ids) {
    if (ids.isEmpty) {
      return null;
    } else {
      final List<String> currencies = [...ids.map((e) => e.symbol).toList()];
      return currencies.toSet().toList();
    }
  }
}
