import 'package:hive/hive.dart';

part 'currency_model.g.dart'; // Generated file for Hive adapter

@HiveType(typeId: 1) // Assign a unique typeId
class CurrencyModel {
  @HiveField(0)
  final String countryCode;

  @HiveField(1)
  final double value;

  CurrencyModel({required this.countryCode, required this.value});

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      countryCode: json['countryCode'] as String,
      value: (json['value'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'countryCode': countryCode,
      'value': value,
    };
  }
}
