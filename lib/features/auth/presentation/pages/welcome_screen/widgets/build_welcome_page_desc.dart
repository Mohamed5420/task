part of 'welcome_screen_widgets_imports.dart';

class BuildWelcomePageDesc extends StatelessWidget {
  const BuildWelcomePageDesc({super.key, required this.desc});
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Text(
        desc,
        style: AppTextStyle.s12_w600(color: context.colors.greyText,height: 1.3),
        textAlign: TextAlign.center,
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
