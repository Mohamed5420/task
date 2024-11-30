import 'package:flutter/material.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';

class OptionItemWidget extends StatelessWidget {
  final String title;
  final Widget? prefix;
  final int prefixGap;
  final TextStyle? titleTextStyle;
  final VoidCallback? onTap;
  final BoxConstraints? constraints;
  final String? suffixText;

  const OptionItemWidget({
    super.key,
    required this.title,
    this.prefix,
    this.prefixGap = 8,
    this.titleTextStyle,
    this.onTap,
    this.constraints,
    this.suffixText,
  });


  TextStyle  _textStyle(BuildContext context) => titleTextStyle??AppTextStyle.s12_w400(
      color: context.colors.blackOpacity);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (prefix != null) prefix!,
            if (prefix != null) Gaps.hGap(prefixGap),
            Flexible(
              child: Text.rich(
                TextSpan(
                  style: _textStyle(context),
                  children: [
                    TextSpan(
                      text: title,
                      style: _textStyle(context),
                    ),
                    if (suffixText != null)
                      TextSpan(
                        text: suffixText!,
                        style: _textStyle(context),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
