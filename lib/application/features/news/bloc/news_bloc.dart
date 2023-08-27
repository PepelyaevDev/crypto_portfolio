import 'package:bloc_concurrency/bloc_concurrency.dart';
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
    on<_Update>(_update, transformer: droppable());
  }

  void _init(_Init event, Emitter<NewsState> emit) async {
    emit(NewsState.loading());
    final List<String>? currencies = _getCurrencies(event.category, event.symbol);
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
        (r) => emit(NewsState.success(r)),
      );
    }
  }

  void _update(_Update event, Emitter<NewsState> emit) async {
    if (event.oldList.nextPage == null) {
      return;
    }
    final news = await _newsRepo.updateNews(event.oldList);
    news.fold(
      (l) => emit(NewsState.error(error: l)),
      (r) => emit(NewsState.success(r)),
    );
  }

  List<String>? _getCurrencies(NewsCategory category, String? symbol) {
    switch (category) {
      case NewsCategory.all:
        return [];
      case NewsCategory.watchlist:
        final List<CoinId> watchlistSymbols = _watchlistRepo.getIds;
        final List<CoinId> portfolioSymbols =
            _portfolioRepo.getCoinsLocal.list.map((e) => e.id).toList();
        return _getCurrenciesFromSymbols([
          ...watchlistSymbols,
          ...portfolioSymbols,
        ]);
      case NewsCategory.coin:
        return [symbol!];
    }
  }

  List<String>? _getCurrenciesFromSymbols(List<CoinId> ids) {
    if (ids.isEmpty) {
      return null;
    } else {
      final List<String> currencies = [...ids.map((e) => e.symbol).toList()];
      return currencies.toSet().toList();
    }
  }
}
