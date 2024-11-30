part of 'convert_screen_widgets_imports.dart';

class BuildSelectCountriesView extends StatelessWidget {
  const BuildSelectCountriesView({super.key, required this.controller});
  final ConvertScreenController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          ObsValueConsumer(
              observable: controller.selectedFromCountryObs,
              builder: (context,value) {
                return BuildCurrencySelectorDropDown(
                  title: 'From Currency',
                  selectedCurrency: value,
                  currencies: context.read<CountriesCubit>().state.list??[],
                  onChanged: (currency) {
                    controller.onSelectFromCountry(currency);
                    controller.convertAmount();
                  },
                );
              }
          ),
          BuildReplaceButton(controller: controller,),
          ObsValueConsumer(
              observable: controller.selectedToCountryObs,
              builder: (context,value) {
                return BuildCurrencySelectorDropDown(
                  title: 'To Currency',
                  selectedCurrency: value,
                  currencies: context.read<CountriesCubit>().state.list??[],
                  onChanged: (currency) {
                    controller.onSelectToCountry(currency);
                    controller.convertAmount();
                  },
                );
              }
          ),
        ],
      ),
    );
  }
}
