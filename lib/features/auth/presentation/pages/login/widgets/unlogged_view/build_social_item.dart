part of '../login_widgets_imports.dart';

class BuildSocialItem extends StatelessWidget {
  final String icon;
  final String title;

  const BuildSocialItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: context.colors.black, width: .5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, width: 20,height: 20,),
          Gaps.hGap15,
          Text(title, style: AppTextStyle.s14_w400(color: context.colors.black),)
        ],
      ),
    );
  }
}
