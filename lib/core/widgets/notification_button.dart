import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/res.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key, this.onTap, this.imgSize, this.width, this.height, this.bgColor, this.imgColor});
  final GestureTapCallback? onTap;
  final double? imgSize;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? imgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (width??Gaps.svgCardSize).w,
        height:(height??Gaps.svgCardSize).w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: Gaps.borderRadius,
          color:bgColor?? context.colors.primary,
        ),
        child: Image.asset(Res.notification,color: imgColor, width: (imgSize??18).w,height: (imgSize??18).w,),
      ),
    );
  }
}
