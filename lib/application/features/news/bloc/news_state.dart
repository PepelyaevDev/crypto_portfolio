part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.loading() = _Loading;
  const factory NewsState.noCoins() = _NoCoins;
  const factory NewsState.success(NewsListEntity news) = _Success;
  const factory NewsState.error({
    NewsListEntity? news,
    required Failure error,
  }) = _Error;
}
