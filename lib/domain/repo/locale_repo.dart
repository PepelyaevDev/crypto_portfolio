import 'dart:ui';
import 'package:crypto_portfolio/data/hive_api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/locale/app_locale.dart';

class LocaleRepo {
  final HiveApiClient _hiveApiClient;
  const LocaleRepo(this._hiveApiClient);

  ///App locales

  List<AppLocale> get appSupportedLocales => AppLocale.values.where((e) {
        return e.usageTypes.contains(UsageType.app);
      }).toList();

  AppLocale get appSelectedLocale {
    final String? locale = _hiveApiClient.appLocale.value;
    if (locale == null) {
      final String appLanguageCode = PlatformDispatcher.instance.locale.languageCode;
      final AppLocale appLocale = AppLocale.fromString(appLanguageCode);
      changeAppLocale(appLocale);
      return appLocale;
    }
    return AppLocale.fromString(locale);
  }

  void changeAppLocale(AppLocale newLocale) => _hiveApiClient.appLocale.put(newLocale.name);

  ///News locales

  List<AppLocale> get newsSupportedLocales => AppLocale.values.where((e) {
        return e.usageTypes.contains(UsageType.news);
      }).toList();

  List<AppLocale> get newsSelectedLocales {
    final List<String>? locales = _hiveApiClient.newsLocales.values;
    if (locales == null || locales.isEmpty) {
      changeNewsLocales([appSelectedLocale]);
      return [appSelectedLocale];
    } else {
      return locales.map((e) => AppLocale.fromString(e)).toList().toSet().toList();
    }
  }

  void changeNewsLocales(List<AppLocale> newList) {
    final List<String> list = newList.map((e) => e.name).toList();
    _hiveApiClient.newsLocales.put(list);
  }
}
