part of 'change_password_imports.dart';

@RoutePage()
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  ChangePasswordData controller = ChangePasswordData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(showHeader: false, title: 'Change Password', children: [
      Gaps.vGap20,
      ChangePasswordInputs(controller: controller),
      const BuildChangePasswordButton(),
    ]);
  }
}
