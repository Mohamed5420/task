import 'package:flutter/material.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/core/theme/themes/app_theme.dart';

class CustomInputTextStyle extends TextStyle {
  final String lang;
  final Color? textColor;

  const CustomInputTextStyle({required this.lang, this.textColor});

  @override
  String? get fontFamily => AppTheme.fontFamily;

  @override
  double get fontSize => 16;

  @override
  Color get color => textColor ?? AppColors.noContextInstance.black;
}
