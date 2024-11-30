part of 'setting_widgets_imports.dart';

class BuildSettingCard extends StatelessWidget {
  const BuildSettingCard({super.key, required this.controller, required this.title, this.suffix, required this.image});
  final SettingController controller;
  final String title;
  final Widget? suffix;
  final String image;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      hasShadow: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(image,color: context.colors.secondary,height: 18.h,width: 18.w,),
              Gaps.hGap8,
              Text(title, style: AppTextStyle.s12_w600(color: context.colors.secondary)),
            ],
          ),
          suffix??const SizedBox.shrink(),
        ],
      ),
    );
  }
}