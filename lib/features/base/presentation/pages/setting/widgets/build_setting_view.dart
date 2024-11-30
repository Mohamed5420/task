part of 'setting_widgets_imports.dart';

class BuildSettingView extends StatelessWidget {
  const BuildSettingView({super.key, required this.controller});
  final SettingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildSettingCard(controller: controller,title: 'Biometric Verification',suffix: SizedBox(
          height: 15.h,
          child: ObsValueConsumer(
              observable: controller.biometricsObs,
              builder: (context,data) {
                return Theme(
                  data: ThemeData(),
                  child: Switch(
                    value: data,
                    onChanged: (v) =>controller.onSwitchBiometrics(),
                    activeColor: context.colors.primary,
                    hoverColor: context.colors.grey,
                    inactiveThumbColor: context.colors.primary,
                    inactiveTrackColor: context.colors.greyWhite,
                   ),
                );
              }
          ),
        ), image: Res.faceId,),
        Gaps.vGap15,
        BuildSettingCard(controller: controller,title: 'Notification Centre',suffix: Icon(Icons.arrow_forward_ios,size: 14.w,color: context.colors.black,), image: Res.notification,),
        Gaps.vGap15,
        BuildSettingCard(controller: controller,title: 'Rate Us',suffix: Icon(Icons.arrow_forward_ios,size: 14.w,color: context.colors.black,), image: Res.alert,),
        Gaps.vGap15,
        InkWell(
          onTap: ()=>getIt<RateAppHelper>().sharetaskApp(),
            child: BuildSettingCard(controller: controller,title: 'Invite Friend',suffix: Icon(Icons.arrow_forward_ios,size: 14.w,color: context.colors.black), image: Res.alert,)),
      ],
    );
  }
}