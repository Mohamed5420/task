part of 'create_business_account_widgets_imports.dart';

class CreateBusinessAccountTitle extends StatelessWidget {
  const CreateBusinessAccountTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Text('Grow your business and increase your sales with task',style: AppTextStyle.s16_w600(color: context.colors.secondary),),
    );
  }
}
