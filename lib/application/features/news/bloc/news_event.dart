part of 'news_bloc.dart';

enum NewsCategory { all, watchlist, coin}

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.init({
    required NewsCategory category,
    required String locale,
    String? symbol,
  }) = _Init;
  const factory NewsEvent.update({
    required NewsListEntity oldList,
  }) = _Update;
}
