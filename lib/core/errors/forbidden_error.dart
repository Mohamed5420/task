import 'package:task/core/localization/translate.dart';

import 'base_error.dart';

class ForbiddenError extends BaseError {
  ForbiddenError() : super(Translate.s.error_forbidden_error);
}
