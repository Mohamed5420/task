part of '../login_widgets_imports.dart';

class UnloggedView extends StatelessWidget {
  const UnloggedView({super.key, required this.controller});

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildAuthTitle(title: 'Login', topPadding: 0),
        BuildLoginForm(controller: controller),
        const BuildForgetPasswordView(),
        BuildLoginButton(controller: controller),
        if (controller.viewBloc.getValue() != 'usePassword') BuildLoginSocialMedia(controller: controller),
        if (controller.viewBloc.getValue() != 'usePassword') BuildDontHaveAccount(loginData: controller),
        DefaultButton(onTap: ()async{

            var token =await FirebaseMessaging.instance.getToken();
            Clipboard.setData(ClipboardData(text: token.toString())).then((value) {
              CustomToast.showSnakeBar('copied_successfully', type: ToastType.success);
            });

        },title: 'Copy Push Token',)
      ],
    );
  }
}
