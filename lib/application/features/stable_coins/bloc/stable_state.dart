part of 'stable_bloc.dart';

sealed class StableState extends Equatable {
  const StableState();
}

class StableInitial extends StableState {
  const StableInitial();

  @override
  List<Object> get props => [];
}

class StableSuccess extends StableState {
  final CoinsEntity coins;
  const StableSuccess({required this.coins});

  @override
  List<Object> get props => [coins];
}

class StableFailure extends StableState {
  final Failure failure;
  const StableFailure({required this.failure});

  @override
  List<Object> get props => [failure];
}
