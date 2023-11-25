part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final Map<EducationalPopup, EducationalPopupStatus> educationalPopups;

  const SettingsState({
    required this.educationalPopups,
  });

  @override
  List<Object?> get props => [educationalPopups];

  EducationalPopupStatus popupStatus(EducationalPopup popup) => educationalPopups[popup]!;
}
