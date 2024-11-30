part of 'change_password_imports.dart';

class ChangePasswordData{
  final GlobalKey<FormState> formKey = GlobalKey();

  final BaseBloc<bool> oldPasswordCubit = BaseBloc(false);
  final BaseBloc<bool> passwordCubit = BaseBloc(false);
  final BaseBloc<bool> confirmPasswordCubit = BaseBloc(false);

  TextEditingController password = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

}