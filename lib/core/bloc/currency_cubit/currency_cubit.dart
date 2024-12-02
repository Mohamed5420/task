import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/features/base/domain/use_case/get_currencies_use_case.dart';

part 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit() : super(CurrencyInitial());

  fetchCurrencies() async {
    List<CurrencyModel>? countryCodes = await GetCurrenciesUseCase().call(false);
    if(countryCodes?.any((e)=>e.countryCode=="ILS")??false){
      countryCodes?.removeWhere((e)=>e.countryCode=='ILS');
    }
    final box = await Hive.openBox<CurrencyModel>(Constants.currenciesBox);
    box.clear();
    for (final currency in countryCodes??[]) {
      await box.add(currency);
    }
    box.close();
    emit(CurrencyUpdated(countryCodes,true));
  }

  fetchCurrenciesOffline() async {
    final box = await Hive.openBox<CurrencyModel>(Constants.currenciesBox);
    List<CurrencyModel> countryCodes = box.values.toList();
    emit(CurrencyUpdated(countryCodes,true));
    box.close();
  }

  testCurrency(List<CurrencyModel> list) async {
    emit(CurrencyUpdated(list,true));
  }

}
