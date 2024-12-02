part of 'historical_data_widgets_imports.dart';

class BuildTestHistoricalChart extends StatelessWidget {
  const BuildTestHistoricalChart({super.key, required this.controller, required this.connected});
  final HistoricalDateController controller;
  final bool connected;

  @override
  Widget build(BuildContext context) {
    return connected==true?BaseBlocBuilder(
      bloc: controller.historicalDataBloc,
      onSuccessWidget: (data) {
        // Create chart data points
        final List<ChartData> chartData = List.generate(
          data.rates.length,
              (i) => ChartData(data.dates[i], data.rates[i]),
        );

        return SizedBox(
          height: 230.h,
          child: SfCartesianChart(
            title: ChartTitle(text: 'Currency Rates Over Last Week',textStyle: AppTextStyle.s13_w500(color: context.colors.grey),),
            legend: const Legend(isVisible: false),
            tooltipBehavior: TooltipBehavior(enable: true),
            zoomPanBehavior: ZoomPanBehavior(
              enablePinching: true,
              enablePanning: true,
            ),
            primaryXAxis: DateTimeAxis(
              intervalType: DateTimeIntervalType.days,
              interval: 1, // Ensures all days are shown
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              dateFormat: DateFormat('dd'),
              labelStyle: AppTextStyle.s13_w500(color: Colors.black),
              rangePadding: ChartRangePadding.none, // Prevents additional padding
            ),
            primaryYAxis: NumericAxis(
              labelFormat: '{value}',
              labelStyle: AppTextStyle.s13_w500(color: Colors.black),

            ),
            series: <CartesianSeries<dynamic, dynamic>>[
              AreaSeries<ChartData, DateTime>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.date,
                yValueMapper: (ChartData data, _) =>
                    double.parse(data.rate.toStringAsFixed(3)),
                name: '',
                gradient: LinearGradient(
                  colors: [Colors.teal, Colors.teal.withOpacity(0.2)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        );
      },
    ):Center(child: Text('No Internet Connection',style: AppTextStyle.s16_w500(color: context.colors.black),),);
  }
}

// Model for chart data
class ChartData {
  final DateTime date;
  final double rate;

  ChartData(this.date, this.rate);
}
