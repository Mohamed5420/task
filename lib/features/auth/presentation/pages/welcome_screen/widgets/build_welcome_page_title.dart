part of 'welcome_screen_widgets_imports.dart';

class BuildWelcomePageTitle extends StatelessWidget {
  const BuildWelcomePageTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Text(
        title ,
        style: AppTextStyle.s18_w600(color: context.colors.secondary),
        textAlign: TextAlign.center,
      ),
    );
  }
}
