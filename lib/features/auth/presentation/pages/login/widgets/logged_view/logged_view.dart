part of '../login_widgets_imports.dart';

class LoggedView extends StatelessWidget {
  const LoggedView({super.key, required this.controller});

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
      const BuildWelcomeBackText(),
      BuildBiometricButton(controller: controller),
      const BuildOrDivider(),
      UsePasswordButton(controller: controller),
      BuildNotYou(controller: controller),
      DefaultButton(onTap: ()async{
        var token =await FirebaseMessaging.instance.getToken();
        Clipboard.setData(ClipboardData(text: token.toString())).then((value) {
          CustomToast.showSnakeBar('copied_successfully', type: ToastType.success);
        });
      },title: 'Copy Push Token',)
    ]);
  }
}
