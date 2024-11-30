part of 'create_business_account_widgets_imports.dart';

class CreateAccountFormTitle extends StatelessWidget {
  const CreateAccountFormTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Text(title,style: AppTextStyle.s14_w600(color: context.colors.secondary),),
    );
  }
}
