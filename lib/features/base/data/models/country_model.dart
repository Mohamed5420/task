import 'package:hive/hive.dart';

part 'country_model.g.dart'; // Generated file for Hive adapter

@HiveType(typeId: 0) // Assign a unique typeId
class CountryModel  {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String alpha3;

  @HiveField(3)
  final String currencyId;

  @HiveField(4)
  final String currencyName;

  @HiveField(5)
  final String currencySymbol;

  CountryModel({
    required this.id,
    required this.name,
    required this.alpha3,
    required this.currencyId,
    required this.currencyName,
    required this.currencySymbol,
  }) ;

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

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'alpha3': alpha3,
        'currencyId': currencyId,
        'currencyName': currencyName,
        'currencySymbol': currencySymbol,
      };
}
