import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/models/currency_model/currency_model.dart';

part 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit() : super(CurrencyInitial());



  Future<List<CurrencyModel>> fetchCurrencies() async {
    print("fetchCurrencies");
    String url = 'https://v6.exchangerate-api.com/v6/4f3907ed322a31bc8f2b71d3/latest/KWD';
    Dio dio = Dio();
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        print("responseCurrencies ${response.data}");
        Map<String, dynamic> data = response.data['conversion_rates'];
        List<CurrencyModel> countryCodes = data.entries.map((entry) {
          return CurrencyModel(
            countryCode: entry.key,
            value: (entry.value as num).toDouble(),
          );
        }).toList();
        emit(CurrencyUpdated(countryCodes,true));
        return countryCodes;
      } else {
        throw Exception('Failed to load conversion rates');
      }
    } catch (e) {
      print('Error fetching conversion rates: $e');
      rethrow;
    }
  }


}
