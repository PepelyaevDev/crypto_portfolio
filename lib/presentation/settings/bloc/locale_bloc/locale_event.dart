part of 'locale_bloc.dart';

class LocaleEvent {
  const factory LocaleEvent.changeAppLocale(
    AppLocale locale,
  ) = _ChangeAppLocale;
  const factory LocaleEvent.changeNewsLocales(
    List<AppLocale> locales,
  ) = _ChangeNewsLocales;
}

class _ChangeAppLocale implements LocaleEvent {
  final AppLocale locale;
  const _ChangeAppLocale(this.locale);
}

class _ChangeNewsLocales implements LocaleEvent {
  final List<AppLocale> locales;

  const _ChangeNewsLocales(this.locales);
}
