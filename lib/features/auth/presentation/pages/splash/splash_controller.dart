part of 'splash_imports.dart';

class SplashController {
  final Location location = Location();

  void manipulateSaveData(BuildContext context) async {
    var appHacked = await FlutterJailbreakDetection.jailbroken;
    if (appHacked) {
      CustomToast.showSimpleToast(msg: "Your device is rooted or jailbroken");
    return;
    }
    await Future.delayed(const Duration(seconds: 2));
     final InternetConnectionChecker checkerConnection;
     checkerConnection = InternetConnectionChecker.createInstance();
     bool connection = await checkerConnection.hasConnection;
    if(connection){
      await context.read<CurrencyCubit>().fetchCurrencies();
      await context.read<CountriesCubit>().getCurrencies();
      AutoRouter.of(context).push(const Home());
    }else{
      await context.read<CurrencyCubit>().fetchCurrenciesOffline();
      await context.read<CountriesCubit>().getCurrenciesOffline();
      AutoRouter.of(context).push(const Home());
    }
  }
}
