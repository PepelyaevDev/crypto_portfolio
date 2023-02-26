import 'dart:convert';

import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';

extension CoinsToJsonConverter on CoinsEntity {
  String get convertToJson => jsonEncode(toJson());
}

extension CoinsFromJsonConverter on String? {
  CoinsEntity get convertToCoinsEntity => this == null
      ? CoinsEntity(
          coins: [],
          updateTime: DateTime.now(),
        )
      : CoinsEntity.fromJson(jsonDecode(this!));
}
