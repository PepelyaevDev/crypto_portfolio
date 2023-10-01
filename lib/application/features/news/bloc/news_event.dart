part of 'news_bloc.dart';

enum NewsCategory { all, watchlist, coin }

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.init({
    required NewsCategory category,
    String? symbol,
  }) = _Init;
  const factory NewsEvent.refresh({
    required Completer<void> completer,
  }) = _Refresh;
  const factory NewsEvent.update({
    required NewsListEntity oldList,
  }) = _Update;
}
