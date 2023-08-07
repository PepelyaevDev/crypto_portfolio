import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension GetMessageFromFailure on Failure {
  String getMessage(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return switch (this) {
      TooManyRequestsFailure _ => localization.response429,
      _ => localization.unknownError,
    };
  }
}
