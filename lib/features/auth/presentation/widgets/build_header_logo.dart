import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/res.dart';

class BuildHeaderLogo extends StatelessWidget {
  const BuildHeaderLogo({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Image.asset(Res.logoIcon,width: (width??180).w,height: (height??120).h,));
  }
}
