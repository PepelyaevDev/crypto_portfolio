part of 'settings_bloc.dart';

abstract class SettingsEvent {
  const SettingsEvent();
  const factory SettingsEvent.blocEducationalPopup(
    EducationalPopup popup,
  ) = _BlocEducationalPopup;
}

class _BlocEducationalPopup extends SettingsEvent {
  final EducationalPopup popup;
  const _BlocEducationalPopup(this.popup);
}
