part of 'security_tips_widgets_imports.dart';

class BuildSecurityTipsList extends StatelessWidget {
  const BuildSecurityTipsList({super.key, required this.controller});
  final SecurityTipsController controller;

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.tipsCubit,
      onSuccessWidget: (data) {
        return ListView.separated(shrinkWrap: true,padding: EdgeInsets.zero,physics: const NeverScrollableScrollPhysics(),itemBuilder: (context,i)=>BuildSecurityTipsItem(model: data[i],onTap: ()=>controller.onSelectItem(i,data),), separatorBuilder: (context,i)=>Gaps.vGap12, itemCount: data.length);
      }
    );
  }
}
