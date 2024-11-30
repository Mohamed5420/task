part of 'historical_data_widgets_imports.dart';

class BuildHistoricalSelectCountriesView extends StatelessWidget {
  const BuildHistoricalSelectCountriesView({super.key, required this.controller});
  final HistoricalDateController controller;
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
                  },
                );
              }
          ),
          BuildHistoricalReplaceButton(controller: controller,),
          ObsValueConsumer(
              observable: controller.selectedToCountryObs,
              builder: (context,value) {
                return BuildCurrencySelectorDropDown(
                  title: 'To Currency',
                  selectedCurrency: value,
                  currencies: context.read<CountriesCubit>().state.list??[],
                  onChanged: (currency) {
                    controller.onSelectToCountry(currency);
                  },
                );
              }
          ),
        ],
      ),
    );
  }
}
