part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final BaseBloc<String> loginCountryCodeCubit = BaseBloc("+974");
  final BaseBloc<bool> passwordCubit = BaseBloc(false);
  final BaseBloc<bool> activeBloc = BaseBloc(false);
  final ObsValue<String> viewBloc = ObsValue.withInit('unLogged');
  final ObsValue<bool> biometricObs = ObsValue.withInit(false);
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  late final LocalAuthentication auth;

  void initBiometric() async{
    auth = LocalAuthentication();
    getAvailableBiometrics();
    checkBiometric().whenComplete(() => checkLoginView());
  }

  Future<void> getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
    print(availableBiometrics);
  }
  void showLoginCountryDialog(BuildContext context) async {
    Country? country = await showCountryPickerDialog(context, cornerRadius: 3);
    if (country?.callingCode != null) {
      loginCountryCodeCubit.successState(country?.callingCode ?? "+974");
    }
  }

  void onSubmit(BuildContext context) async{
    if(formKey.currentState!.validate()){
      btnKey.currentState!.animateForward();
      UserLoginEntity params = UserLoginEntity(
        phone: email.text,
        password: password.text
      );
      var token = await LoginUseCase()(params);
      btnKey.currentState!.animateReverse();
      if (token.isNotEmpty && context.mounted) {
          context.read<AuthCubit>().onUpdateAuth(true);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString("accessToken", token);
          GlobalState.instance.set("accessToken", token);
           AutoRouter.of(context).push(const Home());
      }
    }
  }


  Future<bool> checkBiometric() async {
    haveBiometric = await getIt<BiometricAuth>().canAuthenticate();
    if (haveBiometric) {
      await isBiometricFaceID().whenComplete(() {
        activeBloc.successState(!activeBloc.state.data!);
        viewBloc.setValue(viewBloc.getValue());
      });
    }
    return Future.value(haveBiometric);
  }

  Future<bool> isBiometricFaceID() async {
    biometricFaceID = await getIt<BiometricAuth>().isFaceBiometric();
    print("biometricFaceID$biometricFaceID");
    return Future.value(haveBiometric);
    }

  bool haveBiometric = false;
  bool biometricFaceID = false;

  void checkLoginView(){
    if(haveBiometric){
      viewBloc.setValue('logged');
      print(viewBloc.getValue());
    }
  }

  void loginWithBiometric(BuildContext context) {
    if (haveBiometric && biometricFaceID) {
      getIt<BiometricAuth>().authenticate(context, () {
        AutoRouter.of(context).push(const Home());
      });
    }
  }
}
