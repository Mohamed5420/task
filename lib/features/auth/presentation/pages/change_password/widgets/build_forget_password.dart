part of 'change_password_widgets_imports.dart';

class BuildForgetPassword extends StatelessWidget {
  const BuildForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0.r),
      child: InkWell(
        onTap: ()=>AutoRouter.of(context).push(const ForgetPassword()),
        child: Text(
          'Forget Password?',
          style: AppTextStyle.s12_w600(color: context.colors.blackOpacity,decoration: TextDecoration.underline,),textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
