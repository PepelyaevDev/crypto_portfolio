import 'package:hive/hive.dart';

class HiveLocalesSource {
  final Box _appBox;
  const HiveLocalesSource(this._appBox);

  static const String _selectedNewsLocalesBoxKey = 'selectedNewsLocalesBoxKey';
  static const String _appLocaleBoxKey = 'appLocaleBoxKey';

  //NewsLocales
  String? getSelectedNewsLocales() {
    return _appBox.get(_selectedNewsLocalesBoxKey);
  }

  Future<void> updateSelectedNewsLocales(String json) async {
    await _appBox.put(_selectedNewsLocalesBoxKey, json);
  }

  //AppLocale
  String? getSelectedAppLocale() {
    return _appBox.get(_appLocaleBoxKey);
  }

  Future<void> updateSelectedAppLocale(String json) async {
    await _appBox.put(_appLocaleBoxKey, json);
  }
}
