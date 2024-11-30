import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/res.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key, this.onTap, this.imgSize, this.width, this.height, this.bgColor, this.imgColor});
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
            height: (height??Gaps.svgCardSize).w,
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: Gaps.borderRadius, color: bgColor??context.colors.white),
            child: SvgPicture.asset(Res.share,color: imgColor, width: (imgSize??Gaps.svgSize).h, height: (imgSize??Gaps.svgSize).h)));
  }
}
