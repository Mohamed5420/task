part of '../login_widgets_imports.dart';

class BuildOrDivider extends StatelessWidget {
  const BuildOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.h),
      child: Row(
        children: [
          Expanded(child: Divider(thickness: 1.w, color: context.colors.grey)),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8.w), child: Text("OR", style: AppTextStyle.s14_w500(color: context.colors.blackOpacity))),
          Expanded(child: Divider(thickness: 1.w, color: context.colors.grey)),
        ],
      ),
    );
  }
}
