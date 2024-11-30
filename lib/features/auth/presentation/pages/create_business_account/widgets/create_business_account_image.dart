part of 'create_business_account_widgets_imports.dart';

class CreateBusinessAccountImage extends StatelessWidget {
  const CreateBusinessAccountImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Image.asset(Res.businessAccount, height: 120.h, width: 220.w,),
    );
  }
}
