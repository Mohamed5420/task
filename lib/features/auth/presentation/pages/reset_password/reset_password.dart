part of 'reset_password_imports.dart';

@RoutePage()
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  ResetPasswordController controller = ResetPasswordController();

  @override
  void initState() {
    controller.handleStopWatchConfig();
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await controller.stopWatchTimer?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(children: [
      const BuildAuthTitle(title: 'Set new password', topPadding: 0),
      ResetPasswordForm(controller: controller),
      ResetPasswordButton(controller: controller),
      BuildResendCode(controller: controller, email: '01346498489')
    ]);
  }
}
