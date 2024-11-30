import 'package:task/features/base/domain/entities/currency_entity.dart';

class CountryModel extends CountryEntity{
  CountryModel({required super.id, required super.alpha3, required super.currencyId, required super.currencyName, required super.currencySymbol, required super.name});

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      alpha3: json['alpha3'] ?? '',
      currencyId: json['currencyId'] ?? '',
      currencyName: json['currencyName'] ?? '',
      currencySymbol: json['currencySymbol'] ?? '',
    );
  }
}