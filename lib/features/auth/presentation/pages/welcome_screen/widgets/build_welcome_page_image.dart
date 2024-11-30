part of 'welcome_screen_widgets_imports.dart';

class BuildWelcomePageImage extends StatelessWidget {
  const BuildWelcomePageImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Image.asset(
        image,
        height: 250.h,
        width: 250.w,
      ),
    );
  }
}
