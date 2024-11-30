part of '../login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  const BuildLoginForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          if(controller.viewBloc.getValue()!='usePassword')GenericTextField(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: controller.email,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              hint: 'Phone Email',
              hintColor: context.colors.greyText,
              validate: (value) => value?.validateEmpty(),
            prefixIcon: Icon(
              Icons.email,size:20.w,
              color: context.colors.grey,
            ),
            margin: EdgeInsets.only(top: 20.h),
          ),
          BaseBlocBuilder(
              bloc: controller.passwordCubit,
              onSuccessWidget: (data) {
                return GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: controller.password,
                  fieldTypes: !data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                  validate: (value) => value?.validateEmpty(),
                  hint:  'Password',
                  hintColor: context.colors.greyText,
                  margin: EdgeInsets.only(top: 20.h),
                  prefixIcon: Icon(
                    Icons.password_sharp,size:20.w,
                    color: context.colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => controller.passwordCubit.successState(!data),
                    icon: Icon(
                        !data ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        size: 20,
                        color: context.colors.greyText),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
