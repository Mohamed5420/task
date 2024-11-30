
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';

class ApiNames {
  // static String baseUrl = AppConfig.instance.baseUrl;
  static String baseUrl = "https://free.currconv.com/api/v7/";

  // general

  static String getKycUpdatePersonalDetails(int accountId) => "/v1/account/$accountId/personal/update";
  static String getCountries= "countries?apiKey=8467122bfc92e5f64474";
  static String getHistoricalData(GetHistoricalDataParams params)=> "convert?q=${params.fromCountry}_${params.toCountry}&compact=ultra&date=2024-4-28&endDate=2024-5-4&apiKey=8467122bfc92e5f64474";
  static String refresh= "/account/personal/update";
  static String login= "business/sign-in";
}
