import 'package:task/features/base/domain/entities/historical_rate_entity.dart';

class HistoricalRateModel extends HistoricalRateEntity {
  HistoricalRateModel({required super.timestamp, required super.rate});

  factory HistoricalRateModel.fromJson(MapEntry<String, dynamic> entry) {
    return HistoricalRateModel(
      timestamp: DateTime.parse(entry.key),
      rate: (entry.value as num).toDouble(),
    );
  }
}
