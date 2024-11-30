part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.manipulateSaveData(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(Res.logo), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.black,
      body: Center(
        child: TextAnimator('Currency Converter',
            incomingEffect: WidgetTransitionEffects.incomingScaleDown(),
            textAlign: TextAlign.center,
            atRestEffect: WidgetRestingEffects.bounce(),
            outgoingEffect: WidgetTransitionEffects.outgoingScaleUp(),
            style: AppTextStyle.s40_w700(color: context.colors.white)),
      ),
    );
  }
}
