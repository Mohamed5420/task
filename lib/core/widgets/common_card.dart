import 'package:flutter/material.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, this.margin, required this.child, this.color, this.alignment, this.width, this.height, this.padding, this.border, this.borderRadius, this.hasShadow = false});
  final EdgeInsetsGeometry? margin;
  final Widget child;
  final Color? color;
  final double? width;
  final double? height;
  final bool? hasShadow;
  final EdgeInsetsGeometry? padding;
  final Border? border;
  final AlignmentGeometry? alignment;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? Gaps.cardAllPadding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? Gaps.borderRadius,
        border: border ?? Constants.cardBorder,
        color: color,
        boxShadow: hasShadow==true?[
          BoxShadow(
            color: context.colors.blackOpacity,
            blurStyle: BlurStyle.outer,
            spreadRadius: 0.04,
            blurRadius: 0.8,
          ),
        ]:[],
      ),
      alignment: alignment,
      child: child,
    );
  }
}
