part of 'welcome_screen_widgets_imports.dart';

class BuildWelcomePageTopButtons extends StatelessWidget {
  const BuildWelcomePageTopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: Gaps.sCardAllPadding,
            decoration: BoxDecoration(color: context.colors.white, borderRadius: Gaps.sBorderRadius),
            child: Text(
              'Arabic',
              style: AppTextStyle.s12_w600(color: context.colors.secondary),
            ),
          ),
        ),
      ],
    );
  }
}
