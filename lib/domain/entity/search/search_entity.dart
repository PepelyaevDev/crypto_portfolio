import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entity.freezed.dart';

@freezed
class SearchEntity with _$SearchEntity {
  const factory SearchEntity({
    required List<SearchCoinEntity> coins,
  }) = _SearchEntity;
}

@freezed
class SearchCoinEntity with _$SearchCoinEntity {
  const factory SearchCoinEntity({
    required CoinId id,
    required String icon,
    required int? marketCapRank,
  }) = _SearchCoinEntity;
}
