part of 'register_widgets_imports.dart';

class BuildRegisterFields extends StatelessWidget {
  final RegisterDate registerDate;

  const BuildRegisterFields({Key? key, required this.registerDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: Gaps.commonSpacer,
      child: Form(
        key: registerDate.formKey,
        child: Column(
          children: [
            GenericTextField(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: registerDate.firstNameController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value?.validateName(),
              label: 'First name',
              prefixIcon: Icon(
                Icons.edit,size:20.w,
                color: context.colors.grey,
              ),
              margin: EdgeInsets.only(top: 20.h),
            ),
            GenericTextField(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: registerDate.lastNameController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value?.validateName(),
              label: 'Last name',
              prefixIcon: Icon(
                Icons.edit,size:20.w,
                color: context.colors.grey,
              ),
              margin: EdgeInsets.only(top: 20.h),
            ),
            GenericTextField(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: registerDate.phoneController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.phone,
              action: TextInputAction.next,
              validate: (value) => value?.validatePhone(),
              label: 'Phone',
              prefixIcon: Padding(
                padding: EdgeInsets.all(12.w),
                child: SvgPicture.asset(Res.mobile,
                  color: context.colors.grey,
                ),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
              margin: EdgeInsets.only(top: 20.h),
            ),
            GenericTextField(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: registerDate.emailController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.emailAddress,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmail(),
              label: 'Mail',
              prefixIcon: Icon(
                Icons.email,size:20.w,
                color: context.colors.grey,
              ),
                    margin: EdgeInsets.only(top: 20.h),
            ),
            BlocConsumer<LocationCubit, LocationState>(
              bloc: registerDate.locCubit,
              listener: (context, state) {
                registerDate.addressController.text = state.model?.address??'';
                registerDate.lat = state.model?.lat;
                registerDate.lng = state.model?.lng;
              },
              builder: (context, state) {
                return GenericTextField(
                  fieldTypes: FieldTypes.clickable,
                  label: 'Address',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(
                      Res.location,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.location_on_rounded,size:20.w,
                    color: context.colors.grey,
                  ),
                  controller: registerDate.addressController,
                        margin: EdgeInsets.only(top: 20.h),
                  action: TextInputAction.next,
                  type: TextInputType.text,
                  onTab: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    GetIt.I<Utilities>().navigateToLocationAddress(
                        context, registerDate.locCubit);
                    // Utilities.navigateToLocationAddress(
                    //     context, registerDate.locCubit);
                  },
                  validate: (value) => value!.validateEmpty(),
                );
              },
            ),
            BaseBlocBuilder(
                bloc: registerDate.passwordCubit,
                onSuccessWidget: (data) {
                  return GenericTextField(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    controller: registerDate.passwordController,
                    fieldTypes:
                        !data ? FieldTypes.password : FieldTypes.normal,
                    type: TextInputType.text,
                    action: TextInputAction.done,
                    validate: (value) => value?.validatePassword(),
                    label: 'Password',
                    prefixIcon: Icon(
                      Icons.password,size:20.w,
                      color: context.colors.grey,
                    ),
                          margin: EdgeInsets.only(top: 20.h),
                    suffixIcon: IconButton(
                      onPressed: () =>
                          registerDate.passwordCubit.successState(!data),
                      icon: Icon(
                        !data
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 20,
                        color: context.colors.greyWhite,
                      ),
                    ),
                  );
                }),
            BaseBlocBuilder(
                bloc: registerDate.confirmPasswordCubit,
                onSuccessWidget: (data) {
                  return GenericTextField(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    controller: registerDate.confirmPasswordController,
                    fieldTypes:
                        !data ? FieldTypes.password : FieldTypes.normal,
                    type: TextInputType.text,
                    action: TextInputAction.done,
                    validate: (value) => value?.validatePasswordConfirm(
                        pass: registerDate.passwordController.text),
                    label: 'Confirm Password',
                    prefixIcon: Icon(
                      Icons.password,size:20.w,
                      color: context.colors.grey,
                    ),
                          margin: EdgeInsets.only(top: 20.h),
                    suffixIcon: IconButton(
                      onPressed: () => registerDate.confirmPasswordCubit
                          .successState(!data),
                      icon: Icon(
                        !data
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 20,
                        color: context.colors.greyWhite,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
