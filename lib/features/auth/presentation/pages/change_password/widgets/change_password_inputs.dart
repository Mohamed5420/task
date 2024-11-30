part of 'change_password_widgets_imports.dart';

class ChangePasswordInputs extends StatelessWidget {
  const ChangePasswordInputs({super.key, required this.controller});
  final ChangePasswordData controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            BaseBlocBuilder(
              bloc: controller.oldPasswordCubit,
              onSuccessWidget: (successData) {
                return GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  controller: controller.password,
                  fieldTypes:
                  !successData ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                  validate: (value) => value?.validateEmpty(),
                  label: 'Old password',
                  margin: const EdgeInsets.only(top: 20),
                  prefixIcon: Icon(
                    Icons.password,
                    size: 20.w,
                    color: context.colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        controller.oldPasswordCubit.successState(!successData),
                    icon: Icon(
                      !successData ? Icons.visibility : Icons.visibility_off,
                      size: 20,
                      color: context.colors.greyWhite,
                    ),
                  ),
                );
              },
            ),
            BaseBlocBuilder(
              bloc: controller.passwordCubit,
              onSuccessWidget: (successData) {
                return GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  controller: controller.newPassword,
                  fieldTypes:
                  !successData ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                  label: 'New password',
                  margin: const EdgeInsets.only(top: 20),
                  prefixIcon: Icon(
                    Icons.password,
                    size: 20.w,
                    color: context.colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        controller.passwordCubit.successState(!successData),
                    icon: Icon(
                      !successData ? Icons.visibility : Icons.visibility_off,
                      size: 20,
                      color: context.colors.greyWhite,
                    ),
                  ),
                );
              },
            ),
            BaseBlocBuilder(
              bloc: controller.confirmPasswordCubit,
              onSuccessWidget: (successData) {
                return GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  controller: controller.confirmPassword,
                  fieldTypes:
                  !successData ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                  label: 'Confirm new password',
                  margin: const EdgeInsets.only(top: 20),
                  prefixIcon: Icon(
                    Icons.password,
                    size: 20.w,
                    color: context.colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        controller.confirmPasswordCubit.successState(!successData),
                    icon: Icon(
                      !successData ? Icons.visibility : Icons.visibility_off,
                      size: 20.w,
                      color: context.colors.greyWhite,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
