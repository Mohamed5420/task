part of '../login_widgets_imports.dart';

class BuildNotYou extends StatelessWidget {
  const BuildNotYou({super.key, required this.controller});
  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>controller.viewBloc.setValue('unLogged'),
      title: 'Use different account',
      margin: EdgeInsets.only(bottom: 32.h),
      color: context.colors.white,
      borderColor: context.colors.primary,
      textColor: context.colors.primary,
    );
  }
}
