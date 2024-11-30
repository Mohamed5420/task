part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(page: Splash.page, initial: true),
    AdaptiveRoute(page: WelcomeRoute.page),
    AdaptiveRoute(page: Login.page),
    AdaptiveRoute(page: CreateBusinessAccount.page),
    AdaptiveRoute(page: ActiveAccount.page),
    AdaptiveRoute(page: ResetPassword.page),
    AdaptiveRoute(page: ForgetPassword.page),
    AdaptiveRoute(page: Terms.page),
    AdaptiveRoute(page: LocationAddress.page),
    AdaptiveRoute(page: VerifyCode.page),
    AdaptiveRoute(page: Register.page),
    AdaptiveRoute(page: ChangePassword.page),
    AdaptiveRoute(page: Privacy.page),
    AdaptiveRoute(page: ContactUs.page),
    AdaptiveRoute(page: About.page),
    AdaptiveRoute(page: SecurityTips.page),
    AutoRoute(page: Home.page),
    ...baseRoute
  ];
}

