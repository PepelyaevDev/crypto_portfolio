import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entity.freezed.dart';

@freezed
class SearchEntity with _$SearchEntity {
  const factory SearchEntity({
    required List<SearchCoinEntity> coins,

    ///TODO: add
    // required List exchanges,
    // required List icos,
    // required List categories,
    // required List nfts,
  }) = _SearchEntity;
}

@freezed
class SearchCoinEntity with _$SearchCoinEntity {
  const factory SearchCoinEntity({
    required String id,
    required String name,
    required String apiSymbol,
    required String symbol,
    int? marketCapRank,
    required String thumb,
    required String large,
  }) = _SearchCoinEntity;
}
