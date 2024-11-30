part of 'verify_code_widgets_imports.dart';

class BuildVerifyCodeInput extends StatelessWidget {
  const BuildVerifyCodeInput({super.key, required this.controller});
  final VerifyCodeController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20.h,bottom: 10.h),
      child: Form(key: controller.formKey, child: BuildPinField(onComplete: controller.onComplete)),
    );
  }
}
