part of 'historical_data_imports.dart';

class HistoricalDate extends StatefulWidget {
  const HistoricalDate({super.key});

  @override
  State<HistoricalDate> createState() => _HistoricalDateState();
}

class _HistoricalDateState extends State<HistoricalDate> {
  @override
  Widget build(BuildContext context) {

    HistoricalDateController controller = HistoricalDateController();

    return Scaffold(
      backgroundColor: context.colors.black,
      appBar: DefaultAppBar(title: 'Historical Data',showBack: false,centerTitle: true,titleColor: context.colors.white,backgroundColor: context.colors.black,),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          BuildHistoricalSelectCountriesView(controller:controller),
          BuildHistoricalChart(controller:controller),
        ],
      ),
    );
  }
}
