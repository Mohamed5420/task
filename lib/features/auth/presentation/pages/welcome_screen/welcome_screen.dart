part of 'welcome_screen_imports.dart';

@RoutePage()
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  WelcomePageController controller = WelcomePageController();

  @override
  void initState() {
    controller.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ObsValueConsumer(
          observable: controller.pageObs,
          builder: (context, data) {
            return Container(
              padding: EdgeInsetsDirectional.only(start:16.w,end: 16.w,bottom: 25.h,top: 32.h),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0, 0.3],
                  colors: [
                    const Color(0xFF20BF55).withOpacity(0.2),
                    const Color(0xFF20BF55).withOpacity(0.05),
                  ],
                ),
              ),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const BuildWelcomePageTopButtons(),
                  Gaps.vGap96,
                  Expanded(child: BuildWelcomePageSwiper(controller: controller,)),
                  BuildWelcomePageButtons(controller: controller,)
                ],
              ),
            );
          }),
    );
  }
}
