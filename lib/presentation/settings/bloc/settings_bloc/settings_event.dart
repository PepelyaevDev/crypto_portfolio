part of 'settings_bloc.dart';

abstract class SettingsEvent {
  const SettingsEvent();
  const factory SettingsEvent.blockEducationalPopup(
    EducationalPopup popup,
  ) = _BlockEducationalPopup;
}

class _BlockEducationalPopup extends SettingsEvent {
  final EducationalPopup popup;
  const _BlockEducationalPopup(this.popup);
}
