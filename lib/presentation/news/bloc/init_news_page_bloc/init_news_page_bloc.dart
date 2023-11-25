import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:crypto_portfolio/domain/repo/watchlist_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// this extension is needed to make the code in the widget simple and understandable
// example: "final hasFavorites = initNewsPageBloc.state.hasFavorites;"
extension HasFavorites on bool {
  bool get hasFavorites => this;
}

class InitNewsPageBloc extends Bloc<void, bool> {
  InitNewsPageBloc(WatchlistRepo watchlistRepo, PortfolioRepo portfolioRepo)
      : super(
          _hasFavorites(watchlistRepo, portfolioRepo),
        );

  static bool _hasFavorites(WatchlistRepo watchlistRepo, PortfolioRepo portfolioRepo) {
    final watchlistSymbols = watchlistRepo.getIds;
    final portfolioSymbols = portfolioRepo.getCoinsLocal.list.map((e) => e.id).toList();
    return [...watchlistSymbols, ...portfolioSymbols].isNotEmpty;
  }
}
