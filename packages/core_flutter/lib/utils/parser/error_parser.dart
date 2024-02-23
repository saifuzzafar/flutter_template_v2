import 'package:core/constants/error_types.dart';
import 'package:core/errors/app_error.dart';
import 'package:core_flutter/generated/l10n.dart';

class ErrorParser {
  ErrorParser._();

  static String getLocalisedStringError(
      {AppError? error, required S localisedHelper}) {
    switch (error?.type) {
      case ErrorType.ioexception:
        return localisedHelper.appName;
      case ErrorType.ui:
        return localisedHelper.appName;
      default:
        return '';
    }
  }
}
