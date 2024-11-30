part of 'setting_imports.dart';

@RoutePage()
class SecuritySetting extends StatefulWidget {
  const SecuritySetting({super.key});

  @override
  State<SecuritySetting> createState() => _SecuritySettingState();
}

class _SecuritySettingState extends State<SecuritySetting> {

  SettingController controller = SettingController();

  @override
  void initState(){
    controller.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
        title: 'Setting',
        showHeader: false,
        children: [
          BuildSettingView(controller: controller,),
        ]);
  }
}