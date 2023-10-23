import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:flutter/cupertino.dart';

extension GetMessageFromFailure on Failure {
  String getMessage(BuildContext context) {
    final localization = context.localization;
    return switch (this) {
      TooManyRequestsFailure _ => localization.response429,
      UnknownFailure _ => localization.unknownError,
    };
  }
}
