part of 'setting_imports.dart';

class SettingController {
  ObsValue<bool> biometricsObs = ObsValue.withInit(false);

  void initData()async{
    String? hasBiometric=await getIt<LocalStorage>().getItem("hasBiometric");
    hasBiometric=='1'?biometricsObs.setValue(true):biometricsObs.setValue(false);
  }

  void onSwitchBiometrics() async {
    biometricsObs.setValue(!biometricsObs.getValue());
    if (biometricsObs.getValue() == true) {
      await getIt<LocalStorage>().setItem("hasBiometric", '1');
      print(await getIt<LocalStorage>().getItem("hasBiometric"));
    } else {
      await getIt<LocalStorage>().setItem("hasBiometric", '0');
      print(await getIt<LocalStorage>().getItem("hasBiometric"));
    }
  }
}
