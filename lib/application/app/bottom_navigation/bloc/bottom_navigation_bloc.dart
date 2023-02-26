import 'package:crypto_portfolio/application/app/bottom_navigation/page/bottom_navigation_tabs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc()
      : super(BottomNavigationState(
          BottomNavigationTabs.data[BottomNavigationKey.portfolio]!,
        )) {
    on<BottomNavigationEvent>((event, emit) {
      emit(BottomNavigationState(BottomNavigationTabs.data[event.key]!));
    });
  }
}
