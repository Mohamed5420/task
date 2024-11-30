part of 'contact_us_widgets_imports.dart';

class BuildContactUsButton extends StatelessWidget {
  final ContactUsData contactUsData;

  const BuildContactUsButton({
    super.key,
    required this.contactUsData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
          borderRadius: 8,
          borderColor: context.colors.primary,
          title: 'Send',
          onTap: () {
            Phoenix.rebirth(context);
          },
          color: context.colors.primary,
          textColor: context.colors.white,
          btnKey: contactUsData.btnKey,
          margin: EdgeInsets.only(top: 40.h),
        ),
      ],
    );
  }
}
