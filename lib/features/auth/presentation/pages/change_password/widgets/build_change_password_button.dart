part of 'change_password_widgets_imports.dart';

class BuildChangePasswordButton extends StatelessWidget {
  const BuildChangePasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: (){},
      title: 'Save',
      width: 100,
      fontSize: 13.sp,
      fontWeight: FontWeight.w600,
      margin: EdgeInsets.symmetric(vertical: 10.h,horizontal: 0),
    );
  }
}
