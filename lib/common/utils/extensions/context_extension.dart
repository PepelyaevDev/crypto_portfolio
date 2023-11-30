import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this)!;
  ThemeData get theme => Theme.of(this);
  Brightness get brightness => theme.brightness;
  ColorScheme get colors => theme.colorScheme;
  TextTheme get styles => theme.textTheme;
  Future<void> push(Widget widget) async => await Navigator.of(this).push(
        MaterialPageRoute(builder: (_) => widget),
      );
  void pop() => Navigator.of(this).pop();
}
