import 'package:task/features/base/domain/entities/historical_rate_entity.dart';

class ExchangeRatesEntity{
  final List<HistoricalRateEntity> rates;

  ExchangeRatesEntity({required this.rates});
}