import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';

class BuildAuthTitle extends StatelessWidget {
  const BuildAuthTitle({super.key, required this.title, this.topPadding, this.bottomPadding});
  final String title;
  final double? topPadding;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      padding: EdgeInsets.only(top: (topPadding??0).h,bottom: (bottomPadding??12).h),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: AppTextStyle.s16_w600(color: context.colors.secondary),
      ),
    );
  }
}
