part of 'register_widgets_imports.dart';

class BuildRegisterButton extends StatelessWidget {
  final RegisterDate registerDate;

  const BuildRegisterButton({super.key, required this.registerDate});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: LoadingButton(
        borderRadius: 8,
        borderColor: context.colors.primary,
        title: 'Register',
        onTap: ()=>AutoRouter.of(context).push( VerifyCode(phone: 'phone', isRegister: true)),
        color: context.colors.primary,
        textColor: context.colors.white,
        btnKey: registerDate.btnKey,
        margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
      ),
    );
  }
}
