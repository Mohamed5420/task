part of 'convert_screen_widgets_imports.dart';

class BuildResultText extends StatelessWidget {
  const BuildResultText({super.key, required this.controller});
  final ConvertScreenController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${controller.amountController.text} ${controller.selectedFromCountryObs.getValue()?.id} ${controller.selectedFromCountryObs.getValue()?.name} =',
          style: AppTextStyle.s14_w600(color: context.colors.grey),
        ),
        Gaps.vGap4,
        Text(
          '${controller.resultObs.getValue()??0} ${controller.selectedToCountryObs.getValue()?.id} ${controller.selectedToCountryObs.getValue()?.name}',
          style: AppTextStyle.s16_w600(color: context.colors.black),
        ),
        Gaps.vGap16,
        Text(
          '1 ${controller.selectedFromCountryObs.getValue()?.id} = ${controller.getDifferenceAmountFrom()} ${controller.selectedToCountryObs.getValue()?.id}\n1 ${controller.selectedToCountryObs.getValue()?.id} = ${controller.getDifferenceAmountTo()} ${controller.selectedFromCountryObs.getValue()?.id}',
          style: AppTextStyle.s13_w600(color: context.colors.grey),
        ),
      ],
    );
  }
}
