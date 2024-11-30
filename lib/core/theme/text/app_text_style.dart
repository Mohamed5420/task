import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle() : super();

  static const FontWeight weight400 = FontWeight.w400;

  static const FontWeight weight500 = FontWeight.w500;
  static const FontWeight weight600 = FontWeight.w600;
  static const FontWeight weight700 = FontWeight.w700;
  static const FontWeight weight800 = FontWeight.w800;
  static const double fontHeight = 1;

  // ignore: non_ant_identifier_names
  AppTextStyle.s8_w400({required Color color})
      : super(
          color: color,
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s9_w400({required Color color})
      : super(
          color: color,
          fontSize: 9.sp,
          fontWeight: FontWeight.w400,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s10_w400({required Color color})
      : super(
          color: color,
          fontSize: 10.sp,
          fontWeight: weight400,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s10_w500({required Color color})
      : super(
          color: color,
          fontSize: 10.sp,
          fontWeight: weight500,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s10_w600({required Color color})
      : super(
          color: color,
          fontSize: 10.sp,
          fontWeight: weight600,
          height: fontHeight,
        );

  AppTextStyle.s10_w800({required Color color})
      : super(
          color: color,
          fontSize: 10.sp,
          fontWeight: weight800,
          height: fontHeight,
        );

// ignore: non_ant_identifier_names
  AppTextStyle.s10_w700({required Color color})
      : super(
          color: color,
          fontSize: 10.sp,
          fontWeight: weight700,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s11_w400({required Color color, double? height})
      : super(
          color: color,
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          height: height ?? fontHeight,
        );

  AppTextStyle.s11_w500({required Color color, TextDecoration? decoration, double? height})
      : super(
          color: color,
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          decoration: decoration,
          decorationColor: color,
          height: height ?? fontHeight,
        );

  AppTextStyle.s11_w600({required Color color, double? height, TextDecoration? decoration})
      : super(color: color, fontSize: 11.sp, fontWeight: FontWeight.w600, height: height ?? fontHeight, decoration: decoration, decorationColor: color);

  // ignore: non_ant_identifier_names
  AppTextStyle.s12_w400({required Color color, TextDecoration? decoration, Color? decorationColor})
      : super(color: color, fontSize: 12.sp, fontWeight: FontWeight.w400, height: fontHeight, decoration: decoration, decorationColor: decorationColor);

  // ignore: non_ant_identifier_names
  AppTextStyle.s12_w300({required Color color})
      : super(
          color: color,
          fontSize: 12.sp,
          fontWeight: FontWeight.w300,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s12_w500({required Color color, double? height,TextDecoration? decoration})
      : super(
          color: color,
          fontSize: 12.sp,
          fontWeight: weight500,
          height: height ?? fontHeight,
    decoration: decoration,
    decorationColor: color
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s12_w600({required Color color, double? height, TextDecoration? decoration})
      : super(color: color, fontSize: 12.sp, fontWeight: FontWeight.w600, height: height ?? fontHeight, decoration: decoration, decorationColor: color);

  // ignore: non_ant_identifier_names
  AppTextStyle.s12_w700({required Color color}) : super(color: color, fontSize: 12, fontWeight: FontWeight.w700, height: fontHeight);

  // ignore: non_ant_identifier_names
  AppTextStyle.s13_w500({required Color color, TextDecoration? textDecoration, double? height})
      : super(color: color, fontSize: 13.sp, fontWeight: weight500, height: height ?? fontHeight, decoration: textDecoration, decorationColor: color);

  // ignore: non_ant_identifier_names
  AppTextStyle.s13_w400({required Color color, TextDecoration? textDecoration, double? height})
      : super(color: color, fontSize: 13.sp, fontWeight: weight500, height: height ?? fontHeight, decoration: textDecoration, decorationColor: color);

  // ignore: non_ant_identifier_names
  AppTextStyle.s14_w400({required Color color, TextDecoration? decoration, Color? decorationColor, double? height})
      : super(color: color, fontSize: 14.sp, fontWeight: FontWeight.w400, height: height ?? fontHeight, decoration: decoration, decorationColor: decorationColor);

  // ignore: non_ant_identifier_names
  AppTextStyle.s14_w500({required Color color, double? height, TextDecoration? decoration})
      : super(color: color, fontSize: 14.sp, fontWeight: weight500, height: height ?? fontHeight, decoration: decoration);

  // ignore: non_ant_identifier_names
  AppTextStyle.s14_w600({required Color color, double? height})
      : super(
          color: color,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          height: height ?? fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s14_w800({required Color color})
      : super(
          color: color,
          fontSize: 14.sp,
          fontWeight: FontWeight.w800,
          height: fontHeight,
        );

  AppTextStyle.s15_w600({required Color color, double? height})
      : super(
          color: color,
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          height: height ?? fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s16_w400({required Color color})
      : super(
          color: color,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s16_w500({required Color color, double? height, TextDecoration? decoration})
      : super(
          color: color,
          fontSize: 16.sp,
          fontWeight: weight500,
          height: height ?? fontHeight,
          decoration: decoration,
          decorationColor: color,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s16_w700({required Color color})
      : super(
          color: color,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s16_w600({required Color color, double? fontHeight, TextDecoration? decoration})
      : super(
          color: color,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight ?? fontHeight,
          decorationColor: color,
          decoration: decoration,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s13_w600({required Color color, double? fontHeight, TextDecoration? decoration})
      : super(color: color, fontSize: 13.sp, fontWeight: FontWeight.w600, height: fontHeight ?? fontHeight, decoration: decoration, decorationColor: color);

  // ignore: non_ant_identifier_names
  AppTextStyle.s16_w800({required Color color})
      : super(
          color: color,
          fontSize: 16.sp,
          fontWeight: FontWeight.w800,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s18_w400({required Color color})
      : super(
          color: color,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s18_w500({required Color color}) : super(color: color, fontSize: 18, fontWeight: weight500, height: fontHeight);

  // ignore: non_ant_identifier_names
  AppTextStyle.s18_w600({required Color color})
      : super(
          color: color,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s18_w700({required Color color})
      : super(
          color: color,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s20_w500({required Color color, double? height})
      : super(
          color: color,
          fontSize: 20.sp,
          fontWeight: weight500,
          height: height ?? fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s20_w600({required Color color,double? height})
      : super(
          color: color,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          height: height??fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s24_w700({required Color color})
      : super(
          color: color,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s32_w700({required Color color})
      : super(
          color: color,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          height: fontHeight,
        );

  // ignore: non_ant_identifier_names
  AppTextStyle.s40_w700({required Color color})
      : super(
          color: color,
          fontSize: 40.sp,
          fontWeight: FontWeight.w700,
          height: fontHeight,
        );

  AppTextStyle.h1({required Color color})
      : super(
          color: color,
          fontSize: 40.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );

  AppTextStyle.h2({required Color color})
      : super(
          color: color,
          fontSize: 32.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );

  AppTextStyle.h3({required Color color})
      : super(
          color: color,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );

  AppTextStyle.h4({required Color color})
      : super(
          color: color,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );

  AppTextStyle.h5({required Color color})
      : super(
          color: color,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );

  AppTextStyle.h6({required Color color})
      : super(
          color: color,
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          height: fontHeight,
        );
}
