part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.initBottomNavigation(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (e)async=>controller.onBackPressed(),
      child: DefaultTabController(
        length: 2,
        initialIndex:0,
        child: Scaffold(
          key: controller.scaffold,
          extendBody: false,
          body: BuildHomeTabs(controller: controller),
          bottomNavigationBar: AnimatedBottomNavigateBar(
            controller: controller,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.tabController.dispose();
    controller.animationController.dispose();
    super.dispose();
  }
}
