part of 'verify_code_widgets_imports.dart';

class BuildVerifyCodeTitle extends StatelessWidget {
  const BuildVerifyCodeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text('Enter Verify Code', style: AppTextStyle.s16_w600(color: context.colors.black)),
          ),
          Padding(
            padding: Gaps.commonSpacer,
            child: Text('Send Verify Code', style: AppTextStyle.s12_w500(color: context.colors.greyText)),
          )
        ],
      ),
    );
  }
}
