part of 'historical_data_widgets_imports.dart';

class BuildHistoricalChart extends StatelessWidget {
  const BuildHistoricalChart({super.key, required this.controller});
  final HistoricalDateController controller;

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder(
      bloc: controller.historicalDataBloc,
      onSuccessWidget: (data) {
        List<FlSpot> spots = [];
        for (int i = 0; i < data.dates.length; i++) {
          spots.add(FlSpot(i.toDouble(), data.rates[i]));
        }

        return SizedBox(
          height: 300.h,
          width: 100.w,
          child: LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  isCurved: true,
                  color: Colors.blue,
                  spots: spots,
                  dotData: const FlDotData(show: false),
                ),
              ],
              titlesData: const FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
              ),
              gridData: const FlGridData(show: true),
              borderData: FlBorderData(show: true),
            ),
          ),
        );
      },
    );
  }
}
