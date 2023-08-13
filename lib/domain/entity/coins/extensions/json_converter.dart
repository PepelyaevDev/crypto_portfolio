import 'dart:convert';

import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension CoinsToJsonConverter on CoinsEntity {
  String get convertToJson => jsonEncode(toJson());
}

extension IdsToJsonConverter on List<CoinId> {
  String get convertToJson => jsonEncode(map((e) => e.toJson()).toList());
}

extension CoinsFromJsonConverter on String? {
  CoinsEntity get convertToCoinsEntity => this == null
      ? CoinsEntity(
          list: [],
          updateTime: DateTime.now(),
        )
      : CoinsEntity.fromJson(jsonDecode(this!));

  List<CoinId> get convertToIdsList => this == null
      ? []
      : (jsonDecode(this!) as List<dynamic>).map((e) {
          return CoinId.fromJson(e);
        }).toList();
}
