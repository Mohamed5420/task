part of 'verify_code_widgets_imports.dart';

class VerifyCodeButton extends StatelessWidget {
  final VerifyCodeController controller;
  final String email;
  final bool isRegister;
  final verifyToken;

  const VerifyCodeButton({super.key, required this.controller, required this.email, required this.isRegister, this.verifyToken = ""});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          BaseBlocBuilder(
              bloc: controller.timeCubit,
              onSuccessWidget: (data) {
                if (controller.stopWatchTimer!.isRunning) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Send Code After",
                          style: AppTextStyle.s13_w500(color: context.colors.black),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "$data Second",
                          style: AppTextStyle.s13_w600(color: context.colors.primary),
                        ),
                      ],
                    ),
                  );
                } else {
                  return GestureDetector(
                    onTap: () {
                      controller.handleStopWatchConfig();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                      child: Text(
                        'Send Code',
                        style: AppTextStyle.s13_w600(color: context.colors.primary, decoration: TextDecoration.underline),
                      ),
                    ),
                  );
                }
              }),
          LoadingButton(
            borderRadius: 8,
            borderColor: context.colors.primary,
            title: 'Confirm',
            onTap: () => AutoRouter.of(context).push(const Login()),
            color: context.colors.primary,
            textColor: context.colors.white,
            btnKey: controller.btnKey,
            margin: EdgeInsets.symmetric(vertical: 20.h),
          ),
        ],
      ),
    );
  }
}
