part of '../login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(const ForgetPassword()),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child:Text(
              "Forget Password?", style: AppTextStyle.s12_w600(color: context.colors.greyText,decoration: TextDecoration.underline),),
        ),
      ),
    );
  }
}
