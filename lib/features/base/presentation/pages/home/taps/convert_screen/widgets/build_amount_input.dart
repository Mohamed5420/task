part of 'convert_screen_widgets_imports.dart';

class BuildAmountInput extends StatelessWidget {
  const BuildAmountInput({super.key, required this.controller});
  final ConvertScreenController controller;
  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      controller: controller.amountController,
      fieldTypes: FieldTypes.normal,
      type: TextInputType.number,
      action: TextInputAction.next,
      textColor: context.colors.white,
      hintColor: context.colors.white,
      validate: (value) => value?.validateEmpty(),
      label: 'Amount',
      margin: EdgeInsets.only(top: 0.h),
      onChange: (v){
        controller.convertAmount();
      },
    );
  }
}
