part of 'contact_us_imports.dart';

@RoutePage()
class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  ContactUsData contactUsData = ContactUsData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
        title:'Get In Touch',
        children: [
          const BuildContactUsHeader(),
          BuildContactUsFields(contactUsData: contactUsData),
          BuildContactUsButton(contactUsData: contactUsData)
        ]

    );
  }
}
