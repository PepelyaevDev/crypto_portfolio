import 'package:crypto_portfolio/data/gecko_api/dto/search/search_dto.dart';
import 'package:crypto_portfolio/domain/entity/search/search_entity.dart';

extension SearchDtoToEntity on SearchDTO {
  SearchEntity get toEntity => SearchEntity(
        coins: coins
            .map(
              (e) => SearchCoinEntity(
                id: e.id,
                symbol: e.symbol.toUpperCase(),
                thumb: e.thumb,
                marketCapRank: e.marketCapRank,
              ),
            )
            .toList(),
      );
}
