part of 'WidgetsImports.dart';

class BuildHomeTabs extends StatelessWidget {
  const BuildHomeTabs({super.key, required this.controller});
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ConvertScreen(),
        HistoricalDate(),
      ],
    );
  }
}
