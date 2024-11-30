import 'package:flutter/material.dart';
import 'package:task/core/theme/colors/app_colors.dart';

class AppDarkColors extends AppColors {
  @override
  Color get primary => const Color(0xFFF9656B);

  @override
  Color get secondary => const Color(0xff30e3a0);

  @override
  Color get white => Colors.black;

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get transparent => Colors.transparent;

  @override
  Color get black => Colors.white;

  @override
  Color get background => Colors.black;

  @override
  Color get blackOpacity => Colors.white70;

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get grey => Colors.grey;

  @override
  Color get disableGray => Colors.black38;

  @override
  Color get green => Colors.green;

  @override
  // TODO: implement orange
  Color get orange => throw UnimplementedError();

  @override
  // TODO: implement orangeWhite
  Color get orangeWhite => throw UnimplementedError();

  @override
  // TODO: implement bottomNavBg
  Color get bottomNavBg => const Color(0xFFD2D8E6);

  @override
  // TODO: implement bottomNavBg
  Color get greyText => const Color(0xFF787878);

  @override
  // TODO: implement bottomNavBg
  Color get tabBg => const Color(0xFFCEE5F2);

  @override
  // TODO: implement bottomNavBg
  Color get mintGreen => const Color(0xFFD2F2DD);

  @override
  // TODO: implement bottomNavBg
  Color get lightOrange => const Color(0xFFFFDBB9);

  @override
  // TODO: implement bottomNavBg
  Color get blueWithOpacity => const Color(0xFFE1EFF7);

  @override
  // TODO: implement bottomNavBg
  Color get redOpacity => const Color(0xFFF6C9C9);

  @override
  // TODO: implement bottomNavBg
  Color get red => const Color(0xFFF93C2F);

  @override
  // TODO: implement bottomNavBg
  Color get darkGreen => const Color(0xFF41DEB8);
  @override
  // TODO: implement bottomNavBg
  Color get buttonBg => const Color(0xFFD9D9D9);
}
