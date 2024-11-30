part of 'create_business_account_imports.dart';

@RoutePage()
class CreateBusinessAccount extends StatefulWidget {
  const CreateBusinessAccount({super.key});

  @override
  State<CreateBusinessAccount> createState() => _CreateBusinessAccountState();
}

class _CreateBusinessAccountState extends State<CreateBusinessAccount> {
  @override
  Widget build(BuildContext context) {

    CreateBusinessAccountController controller = CreateBusinessAccountController();

    return Scaffold(
      backgroundColor: context.colors.greyWhite,
      appBar: const AuthAppBarWidget(title: 'Create Business Account',isCenter: false,),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(top: 12.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(25.r))),
          child: ListView(
            children: [
              const CreateBusinessAccountImage(),
              const CreateBusinessAccountTitle(),
              BasicInfoInputs(controller: controller,),
            ],
          )),
    );
  }
}
