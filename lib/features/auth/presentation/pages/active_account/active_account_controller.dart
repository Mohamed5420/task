part of 'active_account_imports.dart';

class ActiveAccountController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  String? code;
  final BaseBloc<bool> codeCubit = BaseBloc(false);

  void onComplete(String value) {
    codeCubit.successState(value.length == 6);
    code = value;
  }
}
