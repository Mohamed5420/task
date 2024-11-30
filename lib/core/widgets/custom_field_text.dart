import 'package:flutter/material.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';

class CustomFieldText extends StatelessWidget {
  const CustomFieldText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.s12_w500(color: context.colors.black),
    );
  }
}
