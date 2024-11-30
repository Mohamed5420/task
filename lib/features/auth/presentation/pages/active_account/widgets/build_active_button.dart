part of 'active_account_widgets_imports.dart';

class BuildActiveButton extends StatelessWidget {
  final ActiveAccountController controller;

  const BuildActiveButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.codeCubit,
      onSuccessWidget: (data) {
        return AbsorbPointer(
          absorbing: !data,
          child: LoadingButton(
              title: "Login",
              onTap: () {},
              color: !data ? context.colors.greyWhite : context.colors.primary,
              textColor: !data ? context.colors.black : context.colors.white,
              btnKey: controller.btnKey,
              margin: EdgeInsets.only(top: 40.h),
              ),
        );
      },
    );
  }
}
