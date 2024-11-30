part of 'WidgetsImports.dart';

class BuildFloatingActionButton extends StatelessWidget {
  const BuildFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: (){
        // controller.animateTabsPages(5);
        // controller.navObs.setValue(2);
      },
      child: const Icon(Icons.shopping_cart_outlined),
    );
  }
}
