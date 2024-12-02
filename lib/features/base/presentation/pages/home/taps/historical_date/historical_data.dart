part of 'historical_data_imports.dart';

class HistoricalDate extends StatefulWidget {
  const HistoricalDate({super.key});

  @override
  State<HistoricalDate> createState() => _HistoricalDateState();
}

class _HistoricalDateState extends State<HistoricalDate> {
  HistoricalDateController controller = HistoricalDateController();

  @override
  void initState() {
    controller.checkConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: DefaultAppBar(title: 'Historical Data',showBack: false,centerTitle: true,titleColor: context.colors.white,backgroundColor: context.colors.white,),
      body: ObsValueConsumer(
        observable: controller.connectivityObs,
        builder: (context,data) {
          return ListView(
            padding: EdgeInsets.all(16.w),
            children: [
              const BuildAppLogo(),
              BuildHistoricalSelectCountriesView(controller:controller),
              BuildTestHistoricalChart(controller:controller, connected: data,),
            ],
          );
        }
      ),
    );
  }
}
