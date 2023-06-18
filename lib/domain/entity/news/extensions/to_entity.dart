import 'package:crypto_portfolio/data/cryptopanic_api/dto/cryptopanic_news_dto.dart';
import 'package:crypto_portfolio/domain/entity/news/news_entity.dart';

extension CryptopanicNewsDtoToEntity on CryptopanicNewsResponse {
  NewsListEntity toEntity({required NewsListEntity oldList}) {
    final List<NewsEntity> list = [...oldList.list];
    for (var e in results) {
      if (e.metadata != null && e.metadata!.description != null) {
        if (list.where((newE) {
          return newE.description == e.metadata!.description!;
        }).isEmpty) {
          list.add(
            NewsEntity(
              title: e.title,
              description: e.metadata!.description!,
              image: e.metadata!.image,
              sourceTitle: e.source.title,
              sourceUrl: 'https://${e.source.domain}',
              url: e.url,
              createdTime: DateTime.parse(e.createdAt),
              currencies: _currencies(e),
            ),
          );
        }
      }
    }
    return NewsListEntity(
      list: list,
      updateTime: DateTime.now(),
      nextPage: next == null ? null : oldList.nextPage! + 1,
      currencies: oldList.currencies,
      locale: oldList.locale,
    );
  }

  List<String> _currencies(CryptopanicNewsDTO news) {
    final List<String> list = [];
    if (news.currencies != null) {
      for (var e in news.currencies!) {
        if (!list.contains(e.code)) {
          list.add(e.code);
        }
      }
    }
    return list;
  }
}
