part of '../login_widgets_imports.dart';

class BuildLoginSocialMedia extends StatelessWidget {
  final LoginController controller;

  const BuildLoginSocialMedia({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Text("Or By Using", style: AppTextStyle.s12_w500(color: context.colors.black),),
          Gaps.vGap20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Res.facebook,height: 30.w,width: 30.w),
              const SizedBox(width: 30,),
              SvgPicture.asset(Res.apple,height: 30.w,width: 30.w),
              const SizedBox(width: 30,),
              Image.asset(Res.twitter,height: 30.w,width: 30.w)

            ],
          )
        ],
      ),
    );
}}
