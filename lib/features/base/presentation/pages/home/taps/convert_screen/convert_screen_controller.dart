part of 'convert_screen_imports.dart';

class ConvertScreenController{
  CountryModel? fromCurrency;
  CountryModel? toCurrency;
  num? result;
  ObsValue<CountryModel?> selectedFromCountryObs = ObsValue.withInit(null);
  ObsValue<num?> resultObs = ObsValue.withInit(null);
  ObsValue<CountryModel?> selectedToCountryObs = ObsValue.withInit(null);
  BaseBloc<List<CountryModel>?> currenciesBloc = BaseBloc([]);
  TextEditingController amountController = TextEditingController();

  onSelectFromCountry(CountryModel country){
    selectedFromCountryObs.setValue(country);
  }

  onSelectToCountry(CountryModel country){
    selectedToCountryObs.setValue(country);
  }

  switchCountries(){
    fromCurrency = selectedToCountryObs.getValue();
    toCurrency = selectedFromCountryObs.getValue();
    selectedFromCountryObs.setValue(fromCurrency);
    selectedToCountryObs.setValue(toCurrency);
    convertAmount();
  }

  List<CountryModel>? currencies=[
    CountryModel(id: 'AF', alpha3: 'AFG', currencyId: 'AFN', currencyName: 'Afghan afghani', currencySymbol: '؋', name: 'Afghanistan'),
    CountryModel(id: 'AI', alpha3: 'AIA', currencyId: 'XCD', currencyName: 'East Caribbean dollar', currencySymbol: '\$', name: 'Anguilla'),
    CountryModel(id: 'AU', alpha3: 'AUS', currencyId: 'AUD', currencyName: 'Australian dollar', currencySymbol: '\$', name: 'Australia'),
    CountryModel(id: 'BD', alpha3: 'BGD', currencyId: 'BDT', currencyName: 'Bangladeshi taka', currencySymbol: '৳', name: 'Bangladesh'),

  ];

  convertAmount(){
    if(amountController.text.isNotEmpty&&selectedFromCountryObs.getValue()!=null&&selectedToCountryObs.getValue()!=null){
      num result = getIt<CurrencyConversion>().getAmountByFxRate(num.parse(amountController.text), selectedFromCountryObs.getValue()?.currencyId, selectedToCountryObs.getValue()?.currencyId);
      resultObs.setValue(result);
    }else{
      resultObs.setValue(null);
    }
  }
  num getDifferenceAmountFrom(){
      num result = getIt<CurrencyConversion>().getAmountByFxRate(1, selectedFromCountryObs.getValue()?.currencyId, selectedToCountryObs.getValue()?.currencyId);
    return result;
  }
  num getDifferenceAmountTo(){
      num result = getIt<CurrencyConversion>().getAmountByFxRate(1, selectedToCountryObs.getValue()?.currencyId,selectedFromCountryObs.getValue()?.currencyId);
    return result;
  }

}