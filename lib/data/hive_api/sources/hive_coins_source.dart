import 'package:hive/hive.dart';

class HiveCoinsSource {
  final Box _appBox;
  const HiveCoinsSource(this._appBox);

  static const String _coinsBoxKey = 'COINS';

  String? getCoins() {
    return _appBox.get(_coinsBoxKey);
  }

  Future<void> updateCoins(String json) async {
    await _appBox.put(_coinsBoxKey, json);
  }
}
