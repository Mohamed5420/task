part of'forget_password_imports.dart';

@RoutePage()
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _ForgetPasswordState();


}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordController controller = ForgetPasswordController();
  @override
  Widget build(BuildContext context) {
    return AuthScaffold(children: [
      const BuildAuthTitle(title: 'Reset your password', topPadding: 0),
      BuildForgetForm(controller: controller,),
      BuildForgetPasswordButton(controller: controller,),
    ]);
  }
}
