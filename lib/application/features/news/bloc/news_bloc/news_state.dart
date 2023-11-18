part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.noCoins() = _NoCoins;
  const factory NewsState.success(
    NewsListEntity news,
    DateTime timeStamp,
  ) = _Success;
  const factory NewsState.error({
    NewsListEntity? news,
    required Failure error,
  }) = _Error;
}

extension MarketChartStateExtension on NewsState {
  bool get loadedState => maybeMap(
        loading: (_) => false,
        noCoins: (_) => false,
        orElse: () => true,
      );

  Failure? get error => mapOrNull(error: (state) => state.error);
}
