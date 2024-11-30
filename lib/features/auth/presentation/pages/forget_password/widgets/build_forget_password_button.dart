part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordController controller;

  const BuildForgetPasswordButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.phoneCubit,
      onSuccessWidget: (data) {
        bool isEmpty = data.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: LoadingButton(
              title: "Continue",
              onTap: () =>AutoRouter.of(context).push(const ResetPassword()),
              color: isEmpty ? context.colors.greyWhite : context.colors.primary,
              textColor: isEmpty ? context.colors.black : context.colors.white,
              btnKey: controller.btnKey,
              margin: EdgeInsets.only(top: 20.h),
          ),
        );
      },
    );
  }
}
