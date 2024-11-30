part of 'verify_code_imports.dart';

@RoutePage()
class VerifyCode extends StatefulWidget {
  final String phone;
  final bool isRegister;
  final String verifyToken;

  const VerifyCode({super.key, required this.phone, required this.isRegister, this.verifyToken = ""});

  @override
  _VerifyCodeState createState() => _VerifyCodeState(phone, verifyToken);
}

class _VerifyCodeState extends State<VerifyCode> {
  final VerifyCodeController controller = VerifyCodeController();
  final String phone;
  final String verifyToken;

  _VerifyCodeState(this.phone, this.verifyToken);

  @override
  void initState() {
    controller.handleStopWatchConfig();

    controller.verifyToken = verifyToken;
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await controller.stopWatchTimer?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {

    return AuthScaffold(
      children: [
        const BuildAuthTitle(title: 'Enter Verify Code',topPadding: 0,),
        BuildVerifyCodeInput(controller: controller),
        VerifyCodeButton(controller: controller, email: widget.phone, isRegister: widget.isRegister, verifyToken: verifyToken)

      ],
    );
  }
}
