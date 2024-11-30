part of 'convert_screen_imports.dart';

class ConvertScreen extends StatefulWidget {
  const ConvertScreen({super.key,});

  @override
  State<ConvertScreen> createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {

  ConvertScreenController controller = ConvertScreenController();

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.black,
      appBar: DefaultAppBar(title: 'Currency Converter',showBack: false,centerTitle: true,titleColor: context.colors.white,backgroundColor: context.colors.black,),
      body: ObsValueConsumer(
        observable: controller.resultObs,
        builder: (context,data) {
          return ListView(
            padding: EdgeInsets.all(16.w),
            children: [
              BuildAmountInput(controller: controller,),
              BuildSelectCountriesView(controller: controller,),
              if(controller.resultObs.getValue()!=null)BuildResultText(controller: controller,),
            ],
          );
        }
      ),
    );
  }
}
