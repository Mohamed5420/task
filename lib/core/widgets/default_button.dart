import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/theme/themes/app_theme.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Widget? child;
  final Function()? onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? fontSize;
  final double? height;
  final double? elevation;
  final bool? disabled;
  final String? fontFamily;
  final FontWeight? fontWeight;

  const DefaultButton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.disabled,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    this.elevation, this.child,
  });

  @override
  Widget build(BuildContext context) {
    Color border = borderColor ?? Colors.transparent;
    return IgnorePointer(
      ignoring: disabled ?? false,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 35.h,
        margin: margin ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? context.colors.primary,
              disabledBackgroundColor: context.colors.greyText.withOpacity(0.5),
              shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(10.r), side: BorderSide(color: border, width: 1)),
              elevation: elevation ?? 0),
          child: child??Text(
            title,
            style: AppTextStyle.s16_w500(color: textColor ?? Colors.white)
                .copyWith(fontSize: fontSize ?? (13.sp), fontFamily: fontFamily ?? AppTheme.fontFamily, fontWeight: fontWeight ?? FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
