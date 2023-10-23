import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup_status.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesApiClient {
  final SharedPreferences _prefs;
  const PreferencesApiClient(this._prefs);

  static Future<PreferencesApiClient> get getClient async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return PreferencesApiClient(prefs);
  }

  EducationalPopupStatus getEducationalPopupStatus(EducationalPopup popup) {
    final bool status = _prefs.getBool(popup.name) ?? false;
    if (status) return EducationalPopupStatus.blocked;
    return EducationalPopupStatus.show;
  }

  Future<void> blocPopup(EducationalPopup popup) async {
    await _prefs.setBool(popup.name, true);
  }
}
