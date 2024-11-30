part of 'verify_code_imports.dart';

class VerifyCodeController {
  String? code;
  StopWatchTimer? stopWatchTimer;
  String verifyToken="";

  final BaseBloc<bool> codeCubit = BaseBloc(false);
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();
  BaseBloc<String> timeCubit = BaseBloc("0");

  void onComplete(String value) {
    codeCubit.successState(value.length == 4);
    code = value;
  }
  // methods
  void handleStopWatchConfig() {
    stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      onChange: (value) {
        final displayTime = StopWatchTimer.getDisplayTime(value,
            milliSecond: false, hours: false);
        timeCubit.successState(displayTime);
      },
    );
    stopWatchTimer?.setPresetSecondTime(60);
    stopWatchTimer!.onStartTimer();
  }


  void resendCode(){
    // stopWatchTimer?.setPresetSecondTime(60);
    stopWatchTimer?.onStartTimer();
  }




}
