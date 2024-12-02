import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:task/core/bloc/currency_cubit/currency_cubit.dart';
import 'package:task/core/constants/constants.dart';
import 'package:task/core/helpers/di.dart';
import 'package:task/core/helpers/global_context.dart';
import 'package:collection/collection.dart';

@lazySingleton
class CurrencyConversion{
  num getAmountByFxRate(num? amount, String? firstCurrency, String? secondCurrency) {
    if (amount == 0 || amount == null || firstCurrency == "" || secondCurrency == "" || firstCurrency == null || secondCurrency == null) return 0;
    if (firstCurrency == secondCurrency || secondCurrency.isEmpty || (firstCurrency == 'Constants.undefined' || secondCurrency == 'Constants.undefined')) return amount;
    var context = getIt<GlobalContext>().context();
    var rates = context.read<CurrencyCubit>().state.model;
    if (firstCurrency == Constants.kwdCurrency) {
      num rate = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == secondCurrency.toUpperCase())?.value ?? 0;
      return truncateToDecimalPlaces((amount * rate), getDCPeByCurrency(secondCurrency));
    }
    if (secondCurrency == Constants.kwdCurrency) {
      num rate = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == firstCurrency.toUpperCase())?.value ?? 0;
      return truncateToDecimalPlaces((amount / rate), getDCPeByCurrency(secondCurrency));
    }
    if (firstCurrency != Constants.kwdCurrency && secondCurrency != Constants.kwdCurrency) {
      num rateFirstCurrency = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == firstCurrency.toUpperCase())?.value ?? 0;
      num rateSecondCurrency = rates?.firstWhereOrNull((element) => element.countryCode.toUpperCase() == secondCurrency.toUpperCase())?.value ?? 0;
      return truncateToDecimalPlaces((amount * (rateSecondCurrency / rateFirstCurrency)), getDCPeByCurrency(secondCurrency));
    }
    return truncateToDecimalPlaces(amount, getDCPeByCurrency(secondCurrency));
  }

  num truncateToDecimalPlaces(num amount, int decimalDigits) {
    return (amount * pow(10, decimalDigits)).truncate() / pow(10, decimalDigits);
  }

  int getDCPeByCurrency(String? cashCurrency) {
    if (cashCurrency == Constants.kwdCurrency) return 3;
    if (cashCurrency == Constants.usdCurrency) return 2;
    return 3;
  }

}