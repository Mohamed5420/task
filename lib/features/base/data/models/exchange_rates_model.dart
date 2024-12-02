import 'package:intl/intl.dart';
import 'package:task/features/base/data/models/historical_rate_model.dart';
import 'package:task/features/base/domain/entities/exchange_rates_entity.dart';
import 'package:task/features/base/domain/entities/historical_rate_entity.dart';

class ExchangeRatesModel extends ExchangeRatesEntity {
  ExchangeRatesModel({ required super.rates});

  // Factory constructor to parse JSON
  factory ExchangeRatesModel.fromJson(Map<String, dynamic> json) {
    // Extract the key ("KHR_CUP") and its value
    if (json.isEmpty) return ExchangeRatesModel(rates: []);

    final key = json.keys.first;
    final ratesMap = json[key] as Map<String, dynamic>;

    // Convert the map of dates and rates into a list of Currency objects
    final currencies = ratesMap.entries
        .map((entry) => HistoricalRateEntity(
      timestamp: DateTime.parse(entry.key),
      rate: (entry.value as num).toDouble(),
    ))
        .toList();

    return ExchangeRatesModel(rates: currencies);
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
