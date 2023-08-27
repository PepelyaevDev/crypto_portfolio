import 'package:crypto_portfolio/domain/entity/locale/app_locale.dart';
import 'package:crypto_portfolio/domain/repo/locale_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  static LocaleState _getState(LocaleRepo repo) {
    return LocaleState(
      appSupportedLocales: repo.appSupportedLocales,
      appSelectedLocale: repo.appSelectedLocale,
      newsSupportedLocales: repo.newsSupportedLocales,
      newsSelectedLocales: repo.newsSelectedLocales,
    );
  }

  final LocaleRepo _localeRepo;
  LocaleBloc(this._localeRepo) : super(_getState(_localeRepo)) {
    on<_ChangeAppLocale>(_changeAppLocale);
    on<_ChangeNewsLocales>(_changeNewsLocales);
  }

  void _changeAppLocale(_ChangeAppLocale event, Emitter<LocaleState> emit) {
    _localeRepo.changeAppLocale(event.locale);
    emit(_getState(_localeRepo));
  }

  void _changeNewsLocales(_ChangeNewsLocales event, Emitter<LocaleState> emit) {
    _localeRepo.changeNewsLocales(event.locales);
    emit(_getState(_localeRepo));
  }
}
