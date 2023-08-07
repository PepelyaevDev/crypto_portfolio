import 'dart:convert';
import 'dart:ui';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/locale/app_locale.dart';

class LocaleRepo {
  final HiveApiClient _hiveApiClient;
  LocaleRepo(this._hiveApiClient);

  ///App locales

  List<AppLocale> get appSupportedLocales => AppLocale.values.where((e) {
        return e.usageTypes.contains(UsageType.app);
      }).toList();

  AppLocale get appSelectedLocale {
    final String? locale = _hiveApiClient.locales.getSelectedAppLocale();
    if (locale == null) {
      final String appLanguageCode = PlatformDispatcher.instance.locale.languageCode;
      final AppLocale appLocale = AppLocale.fromString(appLanguageCode);
      changeAppLocale(appLocale);
      return appLocale;
    } else {
      return AppLocale.fromString(locale);
    }
  }

  Future<void> changeAppLocale(AppLocale newLocale) async {
    await _hiveApiClient.locales.updateSelectedAppLocale(newLocale.name);
  }

  ///News locales

  List<AppLocale> get newsSupportedLocales => AppLocale.values.where((e) {
        return e.usageTypes.contains(UsageType.news);
      }).toList();

  List<AppLocale> get newsSelectedLocales {
    final String? result = _hiveApiClient.locales.getSelectedNewsLocales();
    if (result == null || result.isEmpty) {
      changeNewsLocales([appSelectedLocale]);
      return [appSelectedLocale];
    } else {
      final List<String> locales = List<String>.from(jsonDecode(result));
      return locales.map((e) => AppLocale.fromString(e)).toList().toSet().toList();
    }
  }

  Future<void> changeNewsLocales(List<AppLocale> newList) async {
    final List<String> list = newList.map((e) => e.name).toList();
    await _hiveApiClient.locales.updateSelectedNewsLocales(jsonEncode(list));
  }
}
