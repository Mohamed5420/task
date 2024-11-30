part of'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController controller;
  const BuildForgetForm({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        type: TextInputType.phone,
        action: TextInputAction.next,
        margin: EdgeInsets.symmetric(vertical: 20.h),
        validate: (value) => value?.validatePhone(),
        label: "Phone Number",
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: SvgPicture.asset(Res.mobile,
            color: context.colors.grey,
          ),
        ),
        onChange: controller.onChangePhone,
      ),
    );
  }
}
