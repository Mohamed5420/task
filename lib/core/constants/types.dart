import 'package:flutter/material.dart';
import 'package:task/core/errors/base_error.dart';

typedef WidgetFailureBuilder = Widget Function(
    BuildContext context, BaseError error, VoidCallback callback);