part of 'historical_data_imports.dart';

class HistoricalDateController{
  CountryEntity? fromCurrency;
  CountryEntity? toCurrency;
  ObsValue<CountryEntity?> selectedFromCountryObs = ObsValue.withInit(null);
  ObsValue<CountryEntity?> selectedToCountryObs = ObsValue.withInit(null);
  BaseBloc<CurrencyRatesModel> historicalDataBloc = BaseBloc(null);

  switchCountries(){
    fromCurrency = selectedToCountryObs.getValue();
    toCurrency = selectedFromCountryObs.getValue();
    selectedFromCountryObs.setValue(fromCurrency);
    selectedToCountryObs.setValue(toCurrency);
    getCurrencies();
  }

  onSelectFromCountry(CountryEntity country){
    selectedFromCountryObs.setValue(country);
    getCurrencies();
  }

  onSelectToCountry(CountryEntity country){
    selectedToCountryObs.setValue(country);
    getCurrencies();
  }

  getCurrencies() async {
    if(selectedToCountryObs.getValue() != null && selectedFromCountryObs.getValue() != null) {
      historicalDataBloc.loadingState();
      CurrencyRatesModel? historicalData = await GetHistoricalDataUseCase().call(GetHistoricalDataParams(
        fromCountry: selectedFromCountryObs.getValue()?.currencyId??'',
        toCountry: selectedToCountryObs.getValue()?.currencyId??'',
      ));
      print("historicalData:${historicalData?.dates.toString()}");
      print("historicalData:${historicalData?.rates.toString()}");
      historicalDataBloc.successState(historicalData);
    }
  }
}