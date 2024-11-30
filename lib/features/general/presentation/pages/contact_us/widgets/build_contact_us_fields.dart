part of 'contact_us_widgets_imports.dart';

class BuildContactUsFields extends StatelessWidget {
  final ContactUsData contactUsData;

  const BuildContactUsFields({super.key, required this.contactUsData});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactUsData.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            controller: contactUsData.name,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            hint: 'User name',
            prefixIcon: Icon(
              Icons.edit,
              size: 20.w,
              color: context.colors.grey,
            ),
            margin: EdgeInsets.only(top: 20.h),
          ),
          GenericTextField(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            controller: contactUsData.phone,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(),
            hint: 'Phone',
            prefixIcon: Padding(
              padding: EdgeInsets.all(12.w),
              child: SvgPicture.asset(
                Res.mobile,
                color: context.colors.grey,
              ),
            ),
            margin: EdgeInsets.only(top: 20.h),
          ),
          GenericTextField(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            controller: contactUsData.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            hint:'Mail',
            prefixIcon: Icon(
              Icons.email,
              size: 20.w,
              color: context.colors.grey,
            ),
            margin: EdgeInsets.only(top: 20.h),
          ),

          GenericTextField(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            controller: contactUsData.message,
            fieldTypes: FieldTypes.rich,
            type: TextInputType.text,
            action: TextInputAction.done,
            max: 4,
            validate: (value) => value?.validateEmpty(),
            hint: 'Message',
            // prefixIcon: Icon(
            //   Icons.message,
            //   size: 20.w,
            //   color: context.colors.grey,
            // ),
            margin: EdgeInsets.only(top: 20.h),
          ),
        ],
      ),
    );
  }
}
