part of 'home_imports.dart';

class HomeController {
  final ObsValue<int> secondObs = ObsValue<int>.withInit(0);
  final ObsValue<int> navObs = ObsValue<int>.withInit(0);

  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  final GlobalKey<ScaffoldState> scaffold = GlobalKey();

  List<BottomTabModel> tabs = [
    BottomTabModel(
      img: Icons.swap_horiz,
      activeImg: Res.home,
      title: "Converter",
    ),
    BottomTabModel(
      img: Icons.list_alt,
      activeImg: Res.reels,
      title: "Historical Data",
    ),

  ];

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 2, vsync: ticker);
    animationController = AnimationController(duration: const Duration(seconds: 1), vsync: ticker);
    curve = CurvedAnimation(parent: animationController, curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
    Future.delayed(const Duration(seconds: 1), () => animationController.forward());
  }

  void animateTabsPages(int index) {
    navObs.setValue(index);
    tabController.animateTo(index);
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
