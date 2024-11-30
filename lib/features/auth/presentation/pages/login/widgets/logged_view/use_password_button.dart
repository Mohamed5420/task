part of '../login_widgets_imports.dart';

class UsePasswordButton extends StatelessWidget {
  const UsePasswordButton({super.key, required this.controller});
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: () =>controller.viewBloc.setValue('usePassword'),
      title: 'Use your password',
      margin: EdgeInsets.only(bottom: 15.h),
      color: context.colors.primary,
      borderColor: context.colors.primary,
      textColor: context.colors.white,
    );
  }
}
