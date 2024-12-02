part of 'convert_screen_widgets_imports.dart';

class BuildCurrencySelectorDropDown extends StatelessWidget {
  const BuildCurrencySelectorDropDown({super.key, required this.title, this.selectedCurrency, required this.currencies, required this.onChanged});
  final String title;
  final CountryModel? selectedCurrency;
  final List<CountryModel> currencies;
  final ValueChanged<CountryModel> onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<CountryModel>(
      value: selectedCurrency,
      items: currencies.map((e) => DropdownMenuItem<CountryModel>(value: e, child:
      Container(
        constraints: BoxConstraints(
          maxWidth: 250.w
        ),
          child: Text("${e.id.countryFlagFromId}  ${e.id} - ${e.name}",style: AppTextStyle.s13_w600(color: context.colors.black),overflow: TextOverflow.ellipsis, )))).toList(),
      onChanged: (value) {
        onChanged(value!);
      },
      dropdownColor: context.colors.white,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: AppTextStyle.s13_w500(color: context.colors.grey),
        enabledBorder:  OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: Gaps.borderRadius,
        ),
        suffixIcon: Icon(Icons.arrow_drop_down,color: context.colors.black,),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: context.colors.primary),
          borderRadius: Gaps.borderRadius,
        ),
      ),
    );
  }
}
