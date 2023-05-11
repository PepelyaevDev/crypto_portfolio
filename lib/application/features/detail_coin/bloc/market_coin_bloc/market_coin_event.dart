part of 'market_coin_bloc.dart';

@freezed
class MarketCoinEvent with _$MarketCoinEvent {
  const factory MarketCoinEvent.getCoin(String coinId) = _GetCoin;
}
