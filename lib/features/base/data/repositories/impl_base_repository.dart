import 'package:dartz/dartz.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/features/base/data/data_sources/home_remote_data_source.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/data/models/exchange_rates_model.dart';
import 'package:task/features/base/domain/repositories/base_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';


@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository  {
  @override
  Future<Either<Failure, List<CountryModel>?>> getCountries(bool refresh) async {
      return await getIt<HomeRemoteDataSource>().getCountries(refresh);
  }

  @override
  Future<Either<Failure, CurrencyRatesModel>> getHistoricalData(GetHistoricalDataParams params) async {
    return await getIt<HomeRemoteDataSource>().getHistoricalData(params);
  }

  @override
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies() async{
    return await getIt<HomeRemoteDataSource>().getCurrencies();
  }


  // @override
  // Future<Either<Failure, NearestProviderModel>> getNearestProviders(NearestProvidersEntity params) async{
  //   return await getIt<HomeRemoteDataSource>().getNearestProviders(params);
  // }



}