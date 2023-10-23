import 'package:crypto_portfolio/data/preferences_api/preferences_api_client.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup_status.dart';

class SettingsRepo {
  final PreferencesApiClient _preferencesApiClient;
  const SettingsRepo(this._preferencesApiClient);

  Map<EducationalPopup, EducationalPopupStatus> get getEducationalPopupsInfo {
    final Map<EducationalPopup, EducationalPopupStatus> data =
        <EducationalPopup, EducationalPopupStatus>{};
    for (var e in EducationalPopup.values) {
      data.addAll({e: _preferencesApiClient.getEducationalPopupStatus(e)});
    }
    return data;
  }

  Future<void> blocPopup(EducationalPopup popup) async =>
      await _preferencesApiClient.blocPopup(popup);
}
