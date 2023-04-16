import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension GetMessageFromFailure on Failure {
  String getMessage(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    switch (errorType) {
      case ErrorType.response:
        switch (statusCode) {
          case 429:
            return localization.response429;
          default:
            return localization.unknownError;
        }
      default:
        return localization.unknownError;
    }
  }
}
