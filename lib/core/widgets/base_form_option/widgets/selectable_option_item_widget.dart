import 'package:flutter/material.dart';
import 'package:task/core/constants/dimens.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/base_form_option/widgets/option_item_widget.dart';
class SelectableOptionItemWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final bool isSelected;
  final OptionItemWidget optionItemWidget;
  final TextStyle? selectedTextStyle;

  const SelectableOptionItemWidget({
    super.key,
    this.onTap,
    required this.isSelected,
    required this.optionItemWidget,
    this.selectedTextStyle,
  });


  TextStyle  _selectedTextStyle(BuildContext context ) => selectedTextStyle??AppTextStyle
      .s14_w400(color: context.colors.blackOpacity);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? AppColors.of(context).primary : AppColors.of(context).blackOpacity,
            ),
            borderRadius: Dimens.borderRadius5PX,
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Gaps.hGap8,
              Icon(
                Icons.check,
                color: isSelected ? AppColors.of(context).primary : Colors.transparent,
              ),
              Gaps.hGap8,
              OptionItemWidget(
                constraints: const BoxConstraints(maxWidth: 290),
                title: optionItemWidget.title,
                prefix: optionItemWidget.prefix,
                titleTextStyle: isSelected ? _selectedTextStyle(context) : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
