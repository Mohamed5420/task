import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/back_button.dart';

class StaticAppBar extends StatelessWidget {
  const StaticAppBar({super.key, this.title, this.showBack, this.textStyle});
  final String? title;
  final bool? showBack;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: Row(
        children: [
          showBack==true?const ArrowBackButton():SizedBox(height: 35.h,),
          if(title !='')...[Gaps.hGap16,
            Text(title??'',style: AppTextStyle.s16_w600(color: context.colors.secondary),)]
        ],
      ),
    );
  }
}
