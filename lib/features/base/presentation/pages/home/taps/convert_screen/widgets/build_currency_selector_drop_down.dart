part of 'convert_screen_widgets_imports.dart';

class BuildCurrencySelectorDropDown extends StatelessWidget {
  const BuildCurrencySelectorDropDown({super.key, required this.title, this.selectedCurrency, required this.currencies, required this.onChanged});
  final String title;
  final CountryEntity? selectedCurrency;
  final List<CountryEntity> currencies;
  final ValueChanged<CountryEntity> onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<CountryEntity>(
      value: selectedCurrency,
      items: currencies.map((e) => DropdownMenuItem<CountryEntity>(value: e, child:
      Container(
        constraints: BoxConstraints(
          maxWidth: 250.w
        ),
          child: Text("${e.id.countryFlagFromId}  ${e.id} - ${e.name}",style: AppTextStyle.s13_w600(color: context.colors.white),overflow: TextOverflow.ellipsis, )))).toList(),
      onChanged: (value) {
        onChanged(value!);
      },
      dropdownColor: context.colors.black,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
