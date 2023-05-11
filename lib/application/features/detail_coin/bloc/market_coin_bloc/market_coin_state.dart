part of 'market_coin_bloc.dart';

@freezed
class MarketCoinState with _$MarketCoinState {
  const factory MarketCoinState.loading() = _Loading;
  const factory MarketCoinState.success(CoinEntity coinEntity) = _Success;
  const factory MarketCoinState.error(Failure error) = _Error;
}
