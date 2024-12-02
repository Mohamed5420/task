import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task/core/errors/failures.dart';
import 'package:task/core/http/generic_http/api_names.dart';
import 'package:task/core/http/generic_http/generic_http.dart';
import 'package:task/core/http/models/http_request_model.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/data/models/exchange_rates_model.dart';
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';

import 'home_remote_data_source.dart';

@Injectable(as: HomeRemoteDataSource)
class ImplHomeRemoteDataSource extends HomeRemoteDataSource {
  @override
  Future<Either<Failure, List<CountryModel>?>> getCountries(bool refresh) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.getCountries,
        requestMethod: RequestMethod.get,
        responseKey: (data) => data["results"],
        responseType: ResType.list,
        errorFunc: (error) => error["message"],
        toJsonFunc: (json) => List<CountryModel>.from(
            json.values.map((e) => CountryModel.fromJson(e))),
        showLoader: false,
        refresh: refresh);
    var data = GenericHttpImpl<List<CountryModel>>()(model);
    return data;
  }

  @override
  Future<Either<Failure, CurrencyRatesModel>> getHistoricalData(GetHistoricalDataParams params) {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.getHistoricalData(params),
        requestMethod: RequestMethod.get,
        responseKey: (data) => data,
        responseType: ResType.model,
        errorFunc: (error) => error["message"],
        toJsonFunc: (json) {
          print("objecthhhhh${json[json.keys.first]}");
          return CurrencyRatesModel.fromJson(json[json.keys.first]);
        },
        showLoader: false,
        refresh: false);
    var data = GenericHttpImpl<CurrencyRatesModel>()(model);
    return data;
  }

  @override
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies() {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.getCurrencies,
        requestMethod: RequestMethod.get,
        responseKey: (data) => data['conversion_rates'],
        responseType: ResType.list,
        errorFunc: (error) => error["message"],
        toJsonFunc: (json) {
          // Explicitly convert to List<CurrencyModel>
          return json.entries.map<CurrencyModel>((entry) {
            return CurrencyModel(
              countryCode: entry.key,
              value: (entry.value as num).toDouble(),
            );
          }).toList(); // Ensures List<CurrencyModel>
        },
        showLoader: false,
        refresh: false);
    var data = GenericHttpImpl<List<CurrencyModel>>()(model);
    return data;  }

  // @override
  // Future<Either<Failure, NearestProviderModel>> getNearestProviders(NearestProvidersEntity params) async{
  //   HttpRequestModel model = HttpRequestModel(
  //       url: ApiNames.nearestProviders(params),
  //       requestMethod: RequestMethod.get,
  //       responseKey: (data) => data["data"],
  //       responseType: ResType.model,
  //       errorFunc: (error) => error["message"],
  //       toJsonFunc: (json) => NearestProviderModel.fromJson(json),
  //       showLoader: false,
  //       refresh: params.refresh);
  //   var data = GenericHttpImpl<NearestProviderModel>()(model);
  //   return data;
  //
  // }




  // @override
  // Future<Either<Failure, List<CountryEntity>>> getCountries(NoParams params) {

  // }

}