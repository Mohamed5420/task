part of 'historical_data_imports.dart';

class HistoricalDateController{
  CountryModel? fromCurrency;
  CountryModel? toCurrency;
  ObsValue<CountryModel?> selectedFromCountryObs = ObsValue.withInit(null);
  ObsValue<CountryModel?> selectedToCountryObs = ObsValue.withInit(null);
  ObsValue<bool> connectivityObs = ObsValue.withInit(true);
  BaseBloc<CurrencyRatesModel> historicalDataBloc = BaseBloc(null);

  switchCountries() async {
    final InternetConnectionChecker checkerConnection;
    checkerConnection = InternetConnectionChecker.createInstance();
    bool connection = await checkerConnection.hasConnection;
    fromCurrency = selectedToCountryObs.getValue();
    toCurrency = selectedFromCountryObs.getValue();
    selectedFromCountryObs.setValue(fromCurrency);
    selectedToCountryObs.setValue(toCurrency);
    if(selectedToCountryObs.getValue() == null || selectedFromCountryObs.getValue() == null){
      return;
    }else if(connection==false){
      connectivityObs.setValue(false);
    }else{
      connectivityObs.setValue(true);
      getCurrencies();
    }
  }

  checkConnectivity()async{
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      final InternetConnectionChecker checkerConnection;
      checkerConnection = InternetConnectionChecker.createInstance();
      bool connection = await checkerConnection.hasConnection;
      print("connection#$connection");
      if(connection==true){
        connectivityObs.setValue(true);
        if(selectedToCountryObs.getValue() == null || selectedFromCountryObs.getValue() == null){
          getCurrencies();
        }
      }
    });
  }
  onSelectFromCountry(CountryModel country) async {
    final InternetConnectionChecker checkerConnection;
    checkerConnection = InternetConnectionChecker.createInstance();
    bool connection = await checkerConnection.hasConnection;
    selectedFromCountryObs.setValue(country);
    if(selectedToCountryObs.getValue() == null || selectedFromCountryObs.getValue() == null){
      return;
    }else if(connection==false){
      connectivityObs.setValue(false);
    }else{
      connectivityObs.setValue(true);
      getCurrencies();
    }
  }

  onSelectToCountry(CountryModel country) async {
    final InternetConnectionChecker checkerConnection;
    checkerConnection = InternetConnectionChecker.createInstance();
    bool connection = await checkerConnection.hasConnection;
    selectedToCountryObs.setValue(country);
    if(selectedToCountryObs.getValue() == null && selectedFromCountryObs.getValue() == null){
      return;
    }else if(connection==false){
      connectivityObs.setValue(false);
    }else{
      connectivityObs.setValue(true);
      getCurrencies();
    }
  }

  getCurrencies() async {
    if(selectedToCountryObs.getValue() != null && selectedFromCountryObs.getValue() != null) {
      historicalDataBloc.loadingState();
      CurrencyRatesModel? historicalData = await GetHistoricalDataUseCase().call(GetHistoricalDataParams(
        fromCountry: selectedFromCountryObs.getValue()?.currencyId??'',
        toCountry: selectedToCountryObs.getValue()?.currencyId??'',
      ));
      historicalDataBloc.successState(historicalData);
    }
  }
}