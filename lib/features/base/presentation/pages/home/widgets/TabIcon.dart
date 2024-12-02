part of'WidgetsImports.dart';

class TabIcon extends StatelessWidget {
  final HomeController controller ;
  final int index ;
  final bool active;
   const TabIcon({super.key, required this.index,required this.active,required this.controller});
  @override
  Widget build(BuildContext context) {
    Color txtColor = active ? context.colors.primary : context.colors.greyText;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Gaps.vGap4,
         Column(
           children: [
             Icon(controller.tabs[index].img!,size: 24.w,color: active==true?context.colors.primary:context.colors.grey,),
             Gaps.vGap8,
             Text(controller.tabs[index].title! ,style:active?AppTextStyle.s12_w600(color: txtColor):AppTextStyle.s11_w400(color: txtColor),),
           ],
         ),
        active==true?Container(
          height: 4.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),topRight: Radius.circular(10.r),),
            color: context.colors.primary,
          ),
        ):const SizedBox.shrink()
      ],
    );
  }
}
