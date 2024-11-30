part of 'security_tips_widgets_imports.dart';

class BuildSecurityTipsItem extends StatelessWidget {
  const BuildSecurityTipsItem({super.key, required this.model, this.onTap});
  final TipsEntity model;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(model.question,style: AppTextStyle.s13_w500(color: context.colors.black),)),
              InkWell(
                onTap: onTap,
                child: CustomCard(
                  height: 20.w,
                  width: 20.w,
                  alignment: Alignment.center,
                  padding: EdgeInsets.zero,
                  borderRadius: Gaps.sBorderRadius,
                  border: Border.all(width: 1.w),
                  child: Icon(model.isSelected==true?Icons.remove:Icons.add,color: context.colors.black,size: 16.w,),
                ),
              )
            ],
          ),
          if(model.isSelected==true)...[Gaps.vGap8,
          Divider(height: 0.h,color: context.colors.greyWhite,),
          Gaps.vGap8,
          Text(model.answer,style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),)]
        ],
      ),
    );
  }
}
