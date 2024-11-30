part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController controller = LoginController();

  @override
  void initState() {
    controller.initBiometric();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      showBack: false,
      children: [
        ObsValueConsumer(
            observable: controller.viewBloc,
            builder: (context,data) {
              return data=='logged'?LoggedView(controller: controller,):UnloggedView(controller: controller,);
            }
        )
      ],
    );
  }
}
