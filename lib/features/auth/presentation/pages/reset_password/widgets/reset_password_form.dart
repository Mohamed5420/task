part of'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordController controller;
  const ResetPasswordForm({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: controller.code,
            validate: (value) => value?.validateEmpty(),
            label: 'Active Code',
            prefixIcon: Icon(
              Icons.password,size:20.w,
              color: context.colors.grey,
            ),
            margin:  EdgeInsets.only(top: 20.h),
          ),
          GenericTextField(
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: controller.password,
            validate: (value) => value?.validatePassword(),
            label: 'Password',
            prefixIcon: Icon(
              Icons.password,size:20.w,
              color: context.colors.grey,
            ),
            margin:  EdgeInsets.only(top: 20.h),
          ),
          GenericTextField(
            contentPadding:
             EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value?.validatePasswordConfirm( pass: controller.password.text),
            label: 'Confirm Password',
            prefixIcon: Icon(
              Icons.password,size:20.w,
              color: context.colors.grey,
            ),
            margin:  EdgeInsets.only(top: 20.h,bottom: 10.h),
            controller: controller.confirmPassword,
          ),
        ],
      ),
    );
  }
}
