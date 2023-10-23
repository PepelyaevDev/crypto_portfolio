import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup_status.dart';
import 'package:crypto_portfolio/domain/repo/settings_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepo _settingsRepo;
  SettingsBloc(this._settingsRepo)
      : super(
          SettingsState(
            educationalPopups: _settingsRepo.getEducationalPopupsInfo,
          ),
        ) {
    on<_BlocEducationalPopup>(_blocEducationalPopup);
  }

  Future<void> _blocEducationalPopup(
    _BlocEducationalPopup event,
    Emitter<SettingsState> emit,
  ) async {
    await _settingsRepo.blocPopup(event.popup);
    emit(SettingsState(educationalPopups: _settingsRepo.getEducationalPopupsInfo));
  }
}
