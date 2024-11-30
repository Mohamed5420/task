import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:task/core/bloc/base_bloc/base_bloc.dart';
import 'package:task/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:task/core/models/currency_model/currency_model.dart';
import 'package:task/features/base/data/models/country_model.dart';
import 'package:task/features/base/domain/entities/currency_entity.dart';
import 'package:task/features/base/domain/use_case/get_countries_use_case.dart';

part 'countries_state.dart';

class CountriesCubit extends Cubit<CountryState> {
  CountriesCubit() : super(CountryInitial());


  initData() async {
    await getCurrencies(false);
    await getCurrencies(true);
  }

  getCurrencies(bool refresh) async {
    List<CountryEntity>? currenciesList = await GetCountriesUseCase().call(refresh);
    emit(CountryUpdated(currenciesList,true));

  }

}
