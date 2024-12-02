

import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/data/models/exchange_rates_model.dart';
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';

abstract class BaseRepository {

  Future<Either<Failure, List<CountryModel>?>> getCountries(bool refresh);
  Future<Either<Failure, CurrencyRatesModel>> getHistoricalData(GetHistoricalDataParams params);
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies();

}