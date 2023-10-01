part of 'market_coin_bloc.dart';

@freezed
class MarketCoinEvent with _$MarketCoinEvent {
  const factory MarketCoinEvent.getCoin({
    required CoinId id,
    Completer<void>? completer,
  }) = _GetCoin;
}
