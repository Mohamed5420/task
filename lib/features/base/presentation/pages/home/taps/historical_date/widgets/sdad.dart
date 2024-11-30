// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
//
// class CurrencyChart extends StatelessWidget {
//   final List<Currency> history;
//
//   CurrencyChart({required this.history});
//
//   @override
//   Widget build(BuildContext context) {
//     final data = history.map((currency) {
//       return charts.Series<Currency, DateTime>(
//         id: 'Currency',
//         colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//         domainFn: (currency, _) => currency.timestamp,
//         measureFn: (currency, _) => currency.rate,
//         data: [currency],
//       );
//     }).toList();
//
//     return charts.TimeSeriesChart(
//       data,
//       animate: false,
//       primaryMeasureAxis: const charts.NumericAxisSpec(
//         renderSpec: charts.GridlineRendererSpec(
//           labelStyle: charts.TextStyleSpec(
//             fontSize: 12,
//             color: charts.MaterialPalette.gray.shade500,
//           ),
//         ),
//       ),
//       domainAxis: const charts.DateTimeAxisSpec(
//         renderSpec: charts.GridlineRendererSpec(
//           labelStyle: charts.TextStyleSpec(
//             fontSize: 12,
//             color: charts.MaterialPalette.gray.shade500,
//           ),
//         ),
//       ),
//       behaviors: [
//         charts.SeriesLegend(),
//         charts.ChartTitle('USD to CAD'),
//         charts.ChartTitle(
//           'Nov 23, 2024 at 20:00 UTC - Nov 30, 2024 at 19:50 UTC',
//           behavioral: charts.ChartTitleBehavior.title,
//           titleOutsideJustification: charts.OutsideJustification.middleDrawArea,
//         ),
//         charts.RangeAnnotation([
//           charts.RangeAnnotationSegment(
//             history.first.timestamp,
//             history.last.timestamp,
//             charts.RangeAnnotationAxisType.domain,
//             color: Charts.grey100.withOpacity(0.5),
//           ),
//         ]),
//       ],
//     );
//   }
// }
//
// class Currency {
//   final DateTime timestamp;
//   final double rate;
//
//   Currency({required this.timestamp, required this.rate});
// }
//
// void main() {
//   final history = [
//     Currency(timestamp: DateTime(2024, 11, 23, 20, 0), rate: 1.40063),
//     Currency(timestamp: DateTime(2024, 11, 24, 0, 0), rate: 1.40492),
//     Currency(timestamp: DateTime(2024, 11, 24, 4, 0), rate: 1.40491),
//     Currency(timestamp: DateTime(2024, 11, 24, 8, 0), rate: 1.40327),
//     Currency(timestamp: DateTime(2024, 11, 24, 12, 0), rate: 1.40275),
//     Currency(timestamp: DateTime(2024, 11, 24, 16, 0), rate: 1.40163),
//     Currency(timestamp: DateTime(2024, 11, 24, 20, 0), rate: 1.40089),
//     Currency(timestamp: DateTime(2024, 11, 25, 0, 0), rate: 1.39891),
//     // Add more data points as needed
//   ];
//
//   runApp(MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: const Text('USD to CAD')),
//           body: CurrencyChart(history: history),
//               ),
//         ));
// }