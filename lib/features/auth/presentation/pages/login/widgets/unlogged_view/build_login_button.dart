part of '../login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginController controller;

  const BuildLoginButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
            title: "Login",
            onTap: () => controller.onSubmit(context),
            color: context.colors.primary,
            textColor: context.colors.white,
            btnKey: controller.btnKey,
            margin: EdgeInsets.only(top: 20.r),
        ),
        Gaps.vGap20,
        DefaultButton(
          onTap: () async {
            AutoRouter.of(context).push(const CreateBusinessAccount());

            // controller.viewBloc.getValue()=='usePassword'?controller.viewBloc.setValue('unLogged')
            //     :
            // AutoRouter.of(context).push(const Home());
          },
            title: controller.viewBloc.getValue()=='usePassword'?'Use different account':'Login as guest',
          margin: EdgeInsets.zero,
          color: context.colors.white,
          textColor: context.colors.primary,
          borderColor: context.colors.primary,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,

        )
      ],
    );
  }
}
