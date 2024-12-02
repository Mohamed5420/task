import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/core/theme/text/app_text_style.dart';



class CustomInputDecoration extends InputDecoration {
  final String lang;
  final String? labelTxt;
  final String? hint;
  final Widget? prefIcon;
  final Widget? sufIcon;
  final Color? enableColor;
  final Color? focsColor;
  final Color? hintColor;
  final Color? customFillColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const CustomInputDecoration(
      {required this.lang,
      this.hint,
      this.labelTxt,
      this.prefIcon,
      this.sufIcon,
      this.hintColor,
      this.customFillColor,
      this.enableColor,
      this.focsColor,
      this.borderRadius,
      this.padding})
      : super();

  @override
  InputBorder get enabledBorder => OutlineInputBorder(
        borderSide:
            BorderSide(color: enableColor ?? AppColors.noContextInstance.grey, width: 1),
        borderRadius: borderRadius ?? Gaps.borderRadius,
      );

  @override
  InputBorder get focusedBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? Gaps.borderRadius,
      borderSide: BorderSide(color: focusColor ?? AppColors.noContextInstance.primary, width: 1.w));

  @override
  InputBorder get errorBorder => OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 1),
      borderRadius: borderRadius ?? Gaps.borderRadius);

  @override
  InputBorder get focusedErrorBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? Gaps.borderRadius,
      borderSide: const BorderSide(color: Colors.red, width: 2));

  @override
  TextStyle get errorStyle => AppTextStyle.s12_w400(color: AppColors.snackBarRedError);

  @override
  String? get hintText => hint;

  @override
  Widget? get label => labelTxt==null?super.label:Text(labelTxt??"",style: labelStyle,);

  @override
  TextStyle get labelStyle => AppTextStyle.s13_w400(color: AppColors.noContextInstance.grey);

  @override
  TextStyle? get hintStyle => AppTextStyle.s13_w400(color: AppColors.noContextInstance.grey);

  @override
  EdgeInsetsGeometry get contentPadding =>
      padding ?? Gaps.cardAllPadding;

  @override
  bool get filled => true;

  @override
  Color get fillColor => customFillColor ?? Colors.transparent;

  @override
  bool get alignLabelWithHint => true;

  @override
  Widget? get suffixIcon => sufIcon;

  @override
  Widget? get prefixIcon => prefIcon;

  @override
  Color? get focusColor => focsColor;
}
