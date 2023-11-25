import 'package:crypto_portfolio/presentation/bottom_navigation/page/bottom_navigation_tabs.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc(PortfolioRepo portfolioRepo)
      : super(BottomNavigationState(
          BottomNavigationTabs.data[_getInitKey(portfolioRepo)]!,
        )) {
    on<BottomNavigationEvent>((event, emit) {
      emit(BottomNavigationState(BottomNavigationTabs.data[event.key]!));
    });
  }

  static BottomNavigationKey _getInitKey(PortfolioRepo repo) {
    if (repo.getCoinsLocal.list.isEmpty) {
      return BottomNavigationKey.market;
    }
    return BottomNavigationKey.portfolio;
  }
}
