part of 'convert_screen_widgets_imports.dart';

class BuildAppLogo extends StatelessWidget {
  const BuildAppLogo({super.key,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Image.asset(Res.logo, width: 70.w, height: 70.h),
    );
  }
}
