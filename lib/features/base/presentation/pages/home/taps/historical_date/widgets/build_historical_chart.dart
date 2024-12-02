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
        for (int i = 0; i < data.rates.length; i++) {
          spots.add(FlSpot(i.toDouble(), data.rates[i]));
        }

        return SizedBox(
          height: 300.h,
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
              titlesData: FlTitlesData(
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    reservedSize: 70,
                    showTitles: true,
                    getTitlesWidget: (value, meta) => Text(
                      value.toStringAsFixed(4),
                      style: AppTextStyle.s11_w600(color: context.colors.white),
                    ),
                  ),
                ),
                topTitles: const AxisTitles(
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
