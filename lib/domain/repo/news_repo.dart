import 'package:crypto_portfolio/data/cryptopanic_api/api/cryptopanic_api_client.dart';
import 'package:crypto_portfolio/data/cryptopanic_api/dto/cryptopanic_news_dto.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/domain/entity/news/extensions/to_entity.dart';
import 'package:crypto_portfolio/domain/entity/news/news_entity.dart';
import 'package:dartz/dartz.dart';

class NewsRepo {
  final CryptopanicApiClient _cryptopanicApiClient;
  NewsRepo(this._cryptopanicApiClient);

  //Don't call method if nextPage is null
  Future<Either<Failure, NewsListEntity>> updateNews(NewsListEntity oldList) async {
    try {
      final CryptopanicNewsResponse newsResponse = await _cryptopanicApiClient.news.getNews(
        oldList.currencies,
        oldList.locale,
        oldList.nextPage!,
      );
      return right(newsResponse.toEntity(oldList: oldList));
    } catch (e) {
      return left(Failure.from(e));
    }
  }
}
