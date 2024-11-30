

import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/usecases/use_case.dart';
import 'package:task/features/base/data/models/exchange_rates_model.dart';
import 'package:task/features/base/domain/entities/currency_entity.dart';
import 'package:task/features/base/domain/entities/exchange_rates_entity.dart';
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';

abstract class BaseRepository {

  Future<Either<Failure, List<CountryEntity>?>> getCountries(bool refresh);
  Future<Either<Failure, CurrencyRatesModel>> getHistoricalData(GetHistoricalDataParams params);

}