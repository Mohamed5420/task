part of 'convert_screen_widgets_imports.dart';

class BuildAmountInput extends StatelessWidget {
  const BuildAmountInput({super.key, required this.controller});
  final ConvertScreenController controller;
  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
      controller: controller.amountController,
      enableBorderColor: Colors.grey,
      focusBorderColor: Colors.grey,
      fieldTypes: FieldTypes.normal,
      type: TextInputType.number,
      action: TextInputAction.next,
      textColor: context.colors.black,
      hintColor: context.colors.black,
      validate: (value) => value?.validateEmpty(),
      label: 'Amount',
      margin: EdgeInsets.only(top: 0.h),
      onChange: (v){
        controller.convertAmount();
      },
    );
  }
}
