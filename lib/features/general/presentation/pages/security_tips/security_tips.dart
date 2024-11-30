part of 'security_tips_imports.dart';

@RoutePage()
class SecurityTips extends StatefulWidget {
  const SecurityTips({super.key});

  @override
  State<SecurityTips> createState() => _SecurityTipsState();
}

class _SecurityTipsState extends State<SecurityTips> {

  SecurityTipsController controller = SecurityTipsController();

  @override
  void initState() {
    controller.initTips();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'FAQS',
       children: [
      BuildSecurityTipsList(controller: controller)
    ],
    );
  }
}
