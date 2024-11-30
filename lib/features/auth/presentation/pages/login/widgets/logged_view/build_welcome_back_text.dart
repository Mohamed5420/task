part of '../login_widgets_imports.dart';

class BuildWelcomeBackText extends StatelessWidget {
  const BuildWelcomeBackText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.h),
      child: Column(
        children: [
          Text('Welcome back',style: AppTextStyle.s18_w600(color: context.colors.secondary),),
          Gaps.vGap10,
          Text('Mohamed',style: AppTextStyle.s16_w500(color: context.colors.black),),
        ],
      ),
    );
  }
}
