part of 'coins_bloc.dart';

@freezed
class CoinsState with _$CoinsState {
  const factory CoinsState({
    required CoinsEntity coins,
    @Default(false) bool loading,
    String? error,
  }) = _Success;
}
