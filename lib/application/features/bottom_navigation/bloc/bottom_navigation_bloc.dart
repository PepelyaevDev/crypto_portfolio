import 'package:crypto_portfolio/application/features/bottom_navigation/page/bottom_navigation_tabs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc()
      : super(BottomNavigationState(
          BottomNavigationTabs.data[BottomNavigationKey.market]!,
        )) {
    on<BottomNavigationEvent>((event, emit) {
      emit(BottomNavigationState(BottomNavigationTabs.data[event.key]!));
    });
  }
}
