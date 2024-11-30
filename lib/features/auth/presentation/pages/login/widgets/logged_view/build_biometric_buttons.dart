part of '../login_widgets_imports.dart';

class BuildBiometricButton extends StatelessWidget {
  const BuildBiometricButton({super.key, required this.controller});
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.h),
      child: InkWell(
        onTap: ()=>controller.loginWithBiometric(context),
        child: CustomCard(
          width: 80.w,
          height: 80.w,
          alignment: Alignment.center,
          hasShadow: true,
          child: Image.asset(controller.biometricFaceID ?Res.faceId:Res.fingerPrint1,),
        ),
      ),
    );
  }
}
