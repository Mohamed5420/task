part of 'splash_imports.dart';

class SplashController {
  final Location location = Location();

  void manipulateSaveData(BuildContext context) async {
     await GetIt.I<PermissionServices>().requestPermission(Permission.locationWhenInUse, context);
    await Future.delayed(const Duration(seconds: 3));
    await context.read<CurrencyCubit>().fetchCurrencies();
    await context.read<CountriesCubit>().initData();
     AutoRouter.of(context).push(const Home());

  //    SharedPreferences prefs = await SharedPreferences.getInstance();
  //    var token = prefs.get("accessToken");
  //   if(token==null){
  //     AutoRouter.of(context).push(const WelcomeRoute());
  //   }else{
  //     GlobalState.instance.set("accessToken", token);
  //     AutoRouter.of(context).push(const Home());
  //   }
  }
}
