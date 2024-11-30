import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/res.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key, this.imgSize, this.width, this.height, this.bgColor, this.imgColor, this.onTap,
  });
  final double? imgSize;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? imgColor;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: (height??35).w,
          height: (width??35).w,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: Gaps.borderRadius, color: (bgColor??context.colors.white),),
          child: SvgPicture.asset(Res.favorite,color: imgColor, width: (imgSize??14).h, height: (imgSize??14).h)),
    );
  }
}
