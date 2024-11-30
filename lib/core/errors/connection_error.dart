import 'package:task/core/localization/translate.dart';

import 'base_error.dart';

class ConnectionError extends BaseError {
  ConnectionError() : super(Translate.s.error_connection);
}
