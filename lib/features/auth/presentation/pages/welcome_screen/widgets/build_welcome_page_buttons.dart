part of 'welcome_screen_widgets_imports.dart';

class BuildWelcomePageButtons extends StatelessWidget {
  const BuildWelcomePageButtons({super.key, required this.controller});

  final WelcomePageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(controller.pageObs.getValue() == 2)SizedBox(height: 35.h),
        DefaultButton(
          onTap: () => controller.goToNextPage(context),
          title: controller.pageObs.getValue() == 2 ? 'Login' : 'Next',
          margin: EdgeInsets.symmetric(vertical: 12.h),
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        if (controller.pageObs.getValue() != 2)  DefaultButton(
          onTap: () => controller.navigateToLogin(context),
          title: 'Skip',
          margin: EdgeInsets.zero,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: context.colors.white,
          borderColor: context.colors.primary,
          textColor: context.colors.primary,
        )
      ],
    );
  }
}
