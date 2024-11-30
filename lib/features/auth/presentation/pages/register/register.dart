part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterDate registerDate = RegisterDate();

  @override
  void initState() {
    registerDate._determinePosition(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      children: [
        const BuildAuthTitle(title: 'Register', topPadding: 0),
        BuildRegisterFields(registerDate: registerDate),
        BuildTermsAndPolicy(registerDate: registerDate),
        BuildRegisterButton(registerDate: registerDate)
      ],
    );
  }
}
