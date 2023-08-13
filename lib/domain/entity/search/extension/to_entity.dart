import 'package:crypto_portfolio/data/gecko_api/dto/search/search_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/search/search_entity.dart';

extension SearchDtoToEntity on SearchDTO {
  SearchEntity get toEntity => SearchEntity(
        coins: coins
            .map(
              (e) => SearchCoinEntity(
                id: CoinId(symbol: e.symbol.toUpperCase(), name: e.name),
                icon: e.large,
                marketCapRank: e.marketCapRank,
              ),
            )
            .toList(),
      );
}
