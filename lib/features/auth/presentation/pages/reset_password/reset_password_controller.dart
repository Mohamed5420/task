part of'reset_password_imports.dart';

class ResetPasswordController{

  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();

  GlobalKey<CustomButtonState> btnKey = GlobalKey();

  // keys
  GlobalKey<FormState> formKey = GlobalKey();
  StopWatchTimer? stopWatchTimer;

  // controllers
  TextEditingController code = TextEditingController();
  BaseBloc<String> timeCubit = BaseBloc("0");


  // methods
  void handleStopWatchConfig(){
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

  void onResetPassword(BuildContext context, String phone) async {
    AutoRouter.of(context).pushAndPopUntil(const Login(), predicate: (_)=>false);
    FocusScope.of(context).requestFocus(FocusNode());
    // if (formKey.currentState!.validate()) {
    //   btnKey.currentState!.animateForward();
    //   var data = await GeneralRepository(context).resetUserPassword(phone, password.text);
    //   btnKey.currentState!.animateReverse();
    //   CustomToast.showSimpleToast(msg: data["msg"]);
    // }
  }

  void onResendCode(BuildContext context, String phoneOrEmail) async {
    // await GeneralRepository(context).resendCode(phoneOrEmail);
  }


}