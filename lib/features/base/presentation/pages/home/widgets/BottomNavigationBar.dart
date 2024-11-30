part of'WidgetsImports.dart';

class AnimatedBottomNavigateBar extends StatelessWidget {
  final HomeController controller;
  const AnimatedBottomNavigateBar( {super.key,required this.controller});
  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.navObs,
        builder: (context,data) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: AnimatedBottomNavigationBar.builder(
            itemCount: 2,
            tabBuilder: (int index, bool isActive) {
              return TabIcon(index: index, active: isActive, controller: controller,);
            },
            backgroundColor: context.colors.black,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.sharpEdge,
            borderColor: context.colors.white,
            splashSpeedInMilliseconds:300,
            height: 55.h,
            // gapWidth: 20,
            // leftCornerRadius: 20.r,
            activeIndex: controller.navObs.getValue(),
            onTap: (index) => controller.animateTabsPages(index),
          ),
        );
      }
    );
  }
}
