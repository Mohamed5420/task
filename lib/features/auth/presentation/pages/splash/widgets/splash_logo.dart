part of 'splash_widgets_imports.dart';
class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Hero(
          tag: Res.logo,
          child: Image.asset(
            Res.logo,
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
