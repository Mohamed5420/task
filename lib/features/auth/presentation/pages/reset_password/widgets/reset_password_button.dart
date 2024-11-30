part of'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController controller;
  const ResetPasswordButton({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
        title: "Set Password",
        onTap: () =>AutoRouter.of(context).push(const Login()),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: controller.btnKey,
        margin: EdgeInsets.only(top: 20.h),
    );
  }
}
