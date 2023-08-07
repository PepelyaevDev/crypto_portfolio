import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_entity.freezed.dart';

@freezed
class NewsListEntity with _$NewsListEntity {
  const factory NewsListEntity({
    required List<NewsEntity> list,
    required DateTime updateTime,
    required List<String> currencies,
    required List<String> locales,
    required int? nextPage,
  }) = _NewsListEntity;
}

@freezed
class NewsEntity with _$NewsEntity {
  const factory NewsEntity({
    required String title,
    required String description,
    String? image,
    required String sourceTitle,
    required String sourceUrl,
    required String url,
    required DateTime createdTime,
    required List<String> currencies,
  }) = _NewsEntity;
}
