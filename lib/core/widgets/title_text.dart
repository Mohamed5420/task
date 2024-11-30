import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, this.color, this.padding});
  final String title;
  final Color? color;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding??EdgeInsetsDirectional.only(start:16.w,end: 16.w,top: 40.h),
      child: Text(title,style: AppTextStyle.s16_w600(color: color??context.colors.secondary),),
    );
  }
}
