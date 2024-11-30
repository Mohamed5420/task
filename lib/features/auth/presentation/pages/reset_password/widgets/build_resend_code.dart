part of 'reset_password_widgets_imports.dart';

class BuildResendCode extends StatelessWidget {
  final ResetPasswordController controller;
  final String email;

  const BuildResendCode({super.key, required this.controller, required this.email});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BaseBlocBuilder(
          bloc: controller.timeCubit,
          onSuccessWidget: (data) {
            if (controller.stopWatchTimer!.isRunning) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 40),
                child: Text(
                  "Send code after $data second",
                  style: AppTextStyle.s13_w500(color: context.colors.black, textDecoration: TextDecoration.underline),
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  controller.onResendCode(context, email);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 40),
                  child: Text('Resend', style: AppTextStyle.s13_w500(color: context.colors.black, textDecoration: TextDecoration.underline)),
                ),
              );
            }
          }),
    );
  }
}
