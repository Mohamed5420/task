class CurrencyModel {
  final String countryCode;
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
