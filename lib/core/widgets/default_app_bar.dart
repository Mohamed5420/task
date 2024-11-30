import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/back_button.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;
  final Color? titleColor;
  final Widget? leading;
  final List<Widget> actions;
  final double? size;
  final bool? showBack;
  final bool? centerTitle;

  const DefaultAppBar({
    super.key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.size,
    this.backgroundColor,
    this.titleColor,
    this.showBack = true,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyle.s18_w600(color: titleColor??context.colors.secondary),
      ),
      centerTitle: centerTitle ?? false,
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      backgroundColor: backgroundColor??context.colors.white,
      elevation: 0,
      leadingWidth: showBack == true ? 55 : 10,
      leading: leading ??
          Visibility(
            visible: showBack ?? true,
            child: Padding(
              padding: Gaps.cardAllPadding,
              child: const ArrowBackButton(height: 10,),
            ),
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
