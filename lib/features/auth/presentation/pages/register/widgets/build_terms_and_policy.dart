part of 'register_widgets_imports.dart';

class BuildTermsAndPolicy extends StatelessWidget {
  final RegisterDate registerDate ;
  const BuildTermsAndPolicy({super.key, required this.registerDate});

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc:registerDate.termCubit,
            onSuccessWidget: (data) {
        return Row(
          children: [
            Theme(
              data: ThemeData(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Checkbox(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                  activeColor: context.colors.primary,
                  value: data,
                  onChanged: (value)=>registerDate.termCubit.successState(value!)),
            ),
            Text(
              'Accept',
              style:AppTextStyle.s11_w500(color: context.colors.black)
            ),
            Gaps.hGap4,
            GestureDetector(
              onTap: ()=>AutoRouter.of(context).push(const Terms()),
              child: Text(
                'Terms And Condition',
                style:AppTextStyle.s11_w500(color: context.colors.primary,decoration: TextDecoration.underline)
              ),
            ),
          ],
        );
      },
    );
  }
}
