part of '../login_widgets_imports.dart';

class BuildDontHaveAccount extends StatelessWidget {
  LoginController loginData;

  BuildDontHaveAccount({super.key, required this.loginData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dont Have Account?', style: AppTextStyle.s12_w500(color: context.colors.greyText)),
          InkWell(
            onTap: () {
              AutoRouter.of(context).push(const Register());
              // loginData.determinePosition(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Register",
                style: AppTextStyle.s13_w600(color: context.colors.secondary, decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
