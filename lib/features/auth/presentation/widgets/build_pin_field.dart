import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinField extends StatelessWidget {
  final Function(String) onComplete;
  final EdgeInsetsGeometry? margin;

  const BuildPinField({
    super.key,
    required this.onComplete, this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       margin:margin?? EdgeInsets.symmetric(horizontal: 20.w),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          length: 4,
          appContext: context,
          onChanged: (String value) {},
          backgroundColor: Colors.transparent,
          animationType: AnimationType.fade,
          textStyle: AppTextStyle.s12_w600(color: context.colors.black),
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 50,
              fieldOuterPadding: EdgeInsets.symmetric(horizontal: 10.w),
              inactiveColor: context.colors.greyWhite,
              activeColor: context.colors.primary,
              selectedColor: context.colors.primary,
              selectedFillColor: context.colors.white,
              inactiveFillColor: context.colors.white,
              activeFillColor: context.colors.white,
              disabledColor: context.colors.black,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          onCompleted: onComplete,
        ),
      ),
    );
  }
}
