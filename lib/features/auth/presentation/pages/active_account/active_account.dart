part of 'active_account_imports.dart';

@RoutePage()
class ActiveAccount extends StatefulWidget {
  const ActiveAccount({super.key});

  @override
  State<StatefulWidget> createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
  final ActiveAccountController controller = ActiveAccountController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: const AuthAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          const AuthHeaderTitleWidget(title: "Enter your security code", subTitle: "In order for us to be able to reset your password, please enter your phone number below."),
          PinFieldWidget(onComplete: controller.onComplete),
          BuildActiveButton(controller: controller),
        ],
      ),
    );
  }
}
