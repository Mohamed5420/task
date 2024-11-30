class CountryEntity {
  final String id;
  final String name;
  final String alpha3;
  final String currencyId;
  final String currencyName;
  final String currencySymbol;

  CountryEntity({
    required this.id,
    required this.alpha3,
    required this.currencyId,
    required this.currencyName,
    required this.currencySymbol,
    required this.name,
  });

  // Factory method to create a CountryEntity object from JSON
  factory CountryEntity.fromJson(Map<String, dynamic> json) {
    return CountryEntity(
      id: json['id'] ?? '',
      alpha3: json['alpha3'] ?? '',
      currencyId: json['currencyId'] ?? '',
      currencyName: json['currencyName'] ?? '',
      currencySymbol: json['currencySymbol'] ?? '',
      name: json['name'] ?? '',
    );
  }

  @override
  String toString() {
    return 'CountryEntity(id: $id, alpha3: $alpha3, currencyId: $currencyId, currencyName: $currencyName, currencySymbol: $currencySymbol, name: $name)';
  }
}