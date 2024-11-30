part of '../login_widgets_imports.dart';

class NotYouView extends StatelessWidget {
  const NotYouView({super.key, required this.controller});

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
      const BuildWelcomeBackText(),
      BuildBiometricButton(controller: controller),
      const BuildOrDivider(),
      UsePasswordButton(controller: controller),
      BuildNotYou(controller: controller),
    ]);
  }
}
