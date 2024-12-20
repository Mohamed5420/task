
import 'package:intl/intl.dart';
import 'package:task/features/base/domain/use_case/get_historical_data_use_case.dart';

class ApiNames {
  // static String baseUrl = AppConfig.instance.baseUrl;
  static String baseUrl = "https://free.currconv.com/api/v7/";

  // general

  static String getKycUpdatePersonalDetails(int accountId) => "/v1/account/$accountId/personal/update";
  static String getCountries= "countries?apiKey=8467122bfc92e5f64474";
  static String getCurrencies= "https://v6.exchangerate-api.com/v6/4f3907ed322a31bc8f2b71d3/latest/KWD";
  static String getHistoricalData(GetHistoricalDataParams params)=> "convert?q=${params.fromCountry}_${params.toCountry}&compact=ultra&date=${DateFormat('yyyy-M-d').format(DateTime.now().subtract(const Duration(days: 6)))}&endDate=${DateFormat('yyyy-M-d').format(DateTime.now())}&apiKey=8467122bfc92e5f64474";
  static String refresh= "/account/personal/update";
  static String login= "business/sign-in";
}
