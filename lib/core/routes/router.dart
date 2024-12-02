part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(page: Splash.page, initial: true),
    AutoRoute(page: Home.page),
    ...baseRoute
  ];
}

