import 'package:flutter/material.dart';
import 'package:task/core/constants/gaps.dart';
import 'package:task/core/theme/colors/colors_extension.dart';
import 'package:task/core/theme/text/app_text_style.dart';
import 'package:task/core/widgets/back_button.dart';

class AuthAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final TextStyle? textStyle;
  final Function()? onBack;
  final bool showBack;
  final bool? isCenter;
  final Color? backColor;
  final Color? bgColor;
  final Color? iconColor;
  const AuthAppBarWidget({super.key, this.title, this.onBack, this.showBack = true, this.backColor, this.bgColor, this.iconColor, this.textStyle, this.isCenter});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: isCenter??true,
      automaticallyImplyLeading: false,
      surfaceTintColor: context.colors.white,
      title:title!=null? Text(title??"",style: textStyle??AppTextStyle.s18_w600(color: context.colors.secondary),):null,
      backgroundColor: bgColor??Colors.transparent,
      leading:showBack==true? Padding(
        padding: Gaps.cardAllPadding,
        child: ArrowBackButton(height: 10,bgColor: backColor,imgColor: iconColor,),
      ):null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
