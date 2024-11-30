import 'package:intl/intl.dart';
import 'package:task/features/base/data/models/historical_rate_model.dart';
import 'package:task/features/base/domain/entities/exchange_rates_entity.dart';

class ExchangeRatesModel extends ExchangeRatesEntity {
  ExchangeRatesModel({ required super.rates});

  factory ExchangeRatesModel.fromJson(String currencyName, Map<String, dynamic> json) {
    final rates = json.entries
        .map((entry) => HistoricalRateModel.fromJson(entry)) // Map each entry to HistoricalRateModel
        .toList(); // Explicitly creates a List<HistoricalRateModel>

    return ExchangeRatesModel(
      rates: rates,
    );
  }
}



class CurrencyRatesModel {
  final List<DateTime> dates;
  final List<double> rates;

  CurrencyRatesModel({
    required this.dates,
    required this.rates,
  });

  // Factory constructor to create an instance from JSON
  factory CurrencyRatesModel.fromJson(Map<String, dynamic> json) {
    List<DateTime> dates = [];
    List<double> rates = [];

    // Iterate over the dates in the JSON
    json.forEach((key, value) {
      dates.add( DateFormat("yyyy-MM-dd").parse(key));  // Add date (key)
      rates.add(value.toDouble());  // Add rate (value)
    });

    return CurrencyRatesModel(
      dates: dates,
      rates: rates,
    );
  }

}
