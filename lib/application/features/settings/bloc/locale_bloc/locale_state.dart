part of 'locale_bloc.dart';

class LocaleState extends Equatable {
  final List<AppLocale> appSupportedLocales;
  final AppLocale appSelectedLocale;
  final List<AppLocale> newsSupportedLocales;
  final List<AppLocale> newsSelectedLocales;
  const LocaleState({
    required this.appSupportedLocales,
    required this.appSelectedLocale,
    required this.newsSupportedLocales,
    required this.newsSelectedLocales,
  });

  @override
  List<Object?> get props => [
        appSupportedLocales,
        appSelectedLocale,
        newsSupportedLocales,
        newsSelectedLocales,
      ];
}
