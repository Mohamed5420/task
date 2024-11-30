part of 'register_widgets_imports.dart';

class BuildHaveAccount extends StatelessWidget {
  const BuildHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("haven'tAccount?",
              style: AppTextStyle.s13_w500(color: context.colors.black),

            ),
            const SizedBox(width: 5),
            InkWell(
              // onTap: () => AutoRouter.of(context).push(const LoginRoute()),
              child: Text(
                  'SignIn',

                style: AppTextStyle.s13_w500(color: context.colors.secondary),
              ),
            ),
          ],
        ));
  }
}
