part of 'convert_screen_imports.dart';

class ConvertScreenController{
  CountryEntity? fromCurrency;
  CountryEntity? toCurrency;
  num? result;
  ObsValue<CountryEntity?> selectedFromCountryObs = ObsValue.withInit(null);
  ObsValue<num?> resultObs = ObsValue.withInit(null);
  ObsValue<CountryEntity?> selectedToCountryObs = ObsValue.withInit(null);
  BaseBloc<List<CountryEntity>?> currenciesBloc = BaseBloc([]);
  TextEditingController amountController = TextEditingController();

  onSelectFromCountry(CountryEntity country){
    selectedFromCountryObs.setValue(country);
  }

  onSelectToCountry(CountryEntity country){
    selectedToCountryObs.setValue(country);
  }

  switchCountries(){
    fromCurrency = selectedToCountryObs.getValue();
    toCurrency = selectedFromCountryObs.getValue();
    selectedFromCountryObs.setValue(fromCurrency);
    selectedToCountryObs.setValue(toCurrency);
    convertAmount();
  }

  List<CountryEntity>? currencies=[
    CountryEntity(id: 'AF', alpha3: 'AFG', currencyId: 'AFN', currencyName: 'Afghan afghani', currencySymbol: '؋', name: 'Afghanistan'),
    CountryEntity(id: 'AI', alpha3: 'AIA', currencyId: 'XCD', currencyName: 'East Caribbean dollar', currencySymbol: '\$', name: 'Anguilla'),
    CountryEntity(id: 'AU', alpha3: 'AUS', currencyId: 'AUD', currencyName: 'Australian dollar', currencySymbol: '\$', name: 'Australia'),
    CountryEntity(id: 'BD', alpha3: 'BGD', currencyId: 'BDT', currencyName: 'Bangladeshi taka', currencySymbol: '৳', name: 'Bangladesh'),

  ];

  convertAmount(){
    if(amountController.text.isNotEmpty&&selectedFromCountryObs.getValue()!=null&&selectedToCountryObs.getValue()!=null){
      num result = getIt<Utilities>().getAmountByFxRate(num.parse(amountController.text), selectedFromCountryObs.getValue()?.currencyId, selectedToCountryObs.getValue()?.currencyId);
      resultObs.setValue(result);
    }else{
      resultObs.setValue(null);
    }
  }
  num getDifferenceAmountFrom(){
      num result = getIt<Utilities>().getAmountByFxRate(1, selectedFromCountryObs.getValue()?.currencyId, selectedToCountryObs.getValue()?.currencyId);
    return result;
  }
  num getDifferenceAmountTo(){
      num result = getIt<Utilities>().getAmountByFxRate(1, selectedToCountryObs.getValue()?.currencyId,selectedFromCountryObs.getValue()?.currencyId);
    return result;
  }

}