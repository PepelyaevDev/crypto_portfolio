import 'package:crypto_portfolio/application/features/settings/bloc/settings_bloc/settings_bloc.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup.dart';
import 'package:crypto_portfolio/domain/entity/educational_popups/educational_popup_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Error429Popup {
  static void show(BuildContext context) {
    final blocState = context.read<SettingsBloc>().state;
    if (blocState.popupStatus(EducationalPopup.error429) == EducationalPopupStatus.blocked) {
      return;
    }
  }
}
