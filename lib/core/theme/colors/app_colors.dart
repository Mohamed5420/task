import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/bloc/device_cubit/device_cubit.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:task/core/theme/colors/app_dark_colors.dart';
import 'package:task/core/theme/colors/app_light_colors.dart';

abstract class AppColors {
  static final AppDarkColors _dark = AppDarkColors();
  static final AppLightColors _light = AppLightColors();

  static AppColors get fixedColors => _light;

  static const Color snackBarGreenSuccess = Color(0xff03A89E);
  static const Color snackBarRedError = Color(0xffBF1C00);
  static const Color snackBarYellowAlert = Color(0xfffea632);

  static AppColors get noContextInstance => getIt.get<GlobalContext>().context().read<DeviceCubit>().state.model.themeMode == AdaptiveThemeMode.dark ? _dark : _light;

  static AppColors of(BuildContext context) => context.read<DeviceCubit>().state.model.themeMode == AdaptiveThemeMode.dark ? _dark : _light;

  Color get primary;
  // Color get secondry;

  Color get bottomNavBg;

  Color get secondary;
  Color get lightOrange;
  Color get tabBg;
  Color get transparent;

  Color get greyWhite;

  Color get blackOpacity;

  Color get appBarColor;

  Color get white;

  Color get black;

  Color get green;
  Color get mintGreen;
  Color get darkGreen;

  Color get background;

  Color get disableGray;

  Color get orange;

  Color get orangeWhite;
  Color get greyText;
  Color get grey;
  Color get blueWithOpacity;
  Color get redOpacity;
  Color get red;
  Color get buttonBg;
}
