part of '../create_business_account_widgets_imports.dart';

class BasicInfoInputs extends StatelessWidget {
  const BasicInfoInputs({super.key, required this.controller});
  final CreateBusinessAccountController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Gaps.commonSpacer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CreateAccountFormTitle(title: 'Basic Information'),
          Form(
            key: controller.formKey,
            child: const Column(
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }
}
