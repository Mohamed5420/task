import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/domain/use_case/get_countries_use_case.dart';

part 'countries_state.dart';

class CountriesCubit extends Cubit<CountryState> {
  CountriesCubit() : super(CountryInitial());


  getCurrencies() async {
    List<CountryModel>? currenciesList = await GetCountriesUseCase().call(false);
    if(currenciesList?.any((e)=>e.id=="IL")??false){
      currenciesList?.removeWhere((e)=>e.id=='IL');
    }
    final box = await Hive.openBox<CountryModel>(Constants.countriesBox);
    box.clear();
    for (final currency in currenciesList??[]) {
      await box.add(currency);
    }
    box.close();
    emit(CountryUpdated(currenciesList,true));
  }

  getCurrenciesOffline() async {
    final box = await Hive.openBox<CountryModel>(Constants.countriesBox);
    List<CountryModel> currenciesList = box.values.toList();
    emit(CountryUpdated(currenciesList,true));
    box.close();
  }

}
