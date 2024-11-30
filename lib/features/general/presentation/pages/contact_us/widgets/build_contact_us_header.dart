part of'contact_us_widgets_imports.dart';
class BuildContactUsHeader extends StatelessWidget {
  const BuildContactUsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text("Get In Touch",style: AppTextStyle.s16_w600(color: context.colors.secondary)),
          // Gaps.vGap20,
          Text("Leave us a message,And we will Contact you as soon as possible",style: AppTextStyle.s13_w500(color: context.colors.black))
        ],
      ),
    );
  }
}
