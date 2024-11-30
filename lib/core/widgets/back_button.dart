import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/res.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key, this.imgSize, this.width, this.height, this.bgColor, this.imgColor, this.img, this.onTap,
  });
  final double? imgSize;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? imgColor;
  final String? img;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap??() => AutoRouter.of(context).pop(),
      child: Container(
          width: (width??Gaps.svgCardSize).w,
          height: (height??Gaps.svgCardSize).w,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: Gaps.borderRadius, color: bgColor??context.colors.primary),
          child: SvgPicture.asset(img??Res.arrowBack,color: imgColor, width: (imgSize??Gaps.svgSize).h, height: (imgSize??Gaps.svgSize).h)),
    );
  }
}
