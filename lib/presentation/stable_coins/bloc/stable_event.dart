part of 'stable_bloc.dart';

abstract class StableEvent {
  const factory StableEvent.refresh() = _Refresh;
}

class _Refresh implements StableEvent {
  const _Refresh();
}
