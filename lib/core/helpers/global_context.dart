
import 'package:flutter/material.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/routes/router_imports.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GlobalContext {
  BuildContext context() =>  getIt.get<AppRouter>().navigatorKey.currentContext!;
}