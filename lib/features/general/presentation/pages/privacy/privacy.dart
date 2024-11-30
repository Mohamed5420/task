part of 'privacy_imports.dart';

@RoutePage()
class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _AboutState();
}

class _AboutState extends State<Privacy> {
  PrivacyData aboutData = PrivacyData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  AuthScaffold(
        title:'Privacy',
        children: [
          Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas imperdiet consectetur tincidunt. Mauris id elit quis eros cursus aliquam. Quisque vitae est lorem. Fusce dictum nec magna in efficitur. Duis pretium placerat odio, sed eleifend tortor faucibus quis. Praesent blandit non leo at tempor. Morbi eget mattis quam. Sed dignissim mi sit amet dolor sodales elementum. Pellentesque rhoncus egestas eros vel semper. Curabitur non eleifend tellus. Sed viverra tempor est at ultricies.

Fusce ultricies vehicula arcu sed mollis. Fusce molestie vitae quam pretium venenatis. Quisque quam massa, iaculis ut orci eu, finibus congue tellus. Sed et nisi vel nisi tempus feugiat sed sed turpis. Fusce interdum odio at purus efficitur euismod. Curabitur at venenatis enim. Nunc luctus augue lectus, vulputate cursus ligula mollis a. Donec hendrerit id mauris mattis convallis. Etiam rutrum aliquet tellus in iaculis.

In semper quam ac metus venenatis consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam efficitur non ipsum blandit convallis. Mauris mattis pharetra nibh accumsan lobortis. Ut a consequat augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec orci bibendum, iaculis lectus vel, egestas magna. Ut sit amet tortor maximus, dictum lectus ut, varius est. Ut elit arcu, fermentum id iaculis sit amet, ullamcorper vel turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam pellentesque arcu eu erat venenatis consectetur. Vivamus scelerisque gravida erat, in consectetur dolor fermentum nec. Vivamus facilisis dui magna.''',
            style: AppTextStyle.s13_w500(color: context.colors.blackOpacity,height:1.2),
          )
        ]

    );
  }
}