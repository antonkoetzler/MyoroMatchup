import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

final class AppRouter {
  static const loginModuleRoute = 'login_signup';
  static const gameModuleRoute = '/game';

  /// Navigates to a route.
  ///
  /// i.e. [AppRouter.push(Routes.gameRoutes.gameListingScreen.navigate())]
  static void push(RouteNavigationConfiguration navigationConfiguration) {
    navigatorKey.currentContext?.push(navigationConfiguration.location, extra: navigationConfiguration.payload);
  }

  /// Replaces the current route stack with the provided route.
  ///
  /// i.e. [AppRouter.replace(Routes.gameRoutes.gameListingScreen.navigate())]
  static void replace(RouteNavigationConfiguration navigationConfiguration) {
    navigatorKey.currentContext?.go(navigationConfiguration.location, extra: navigationConfiguration.payload);
  }

  /// Pops the current [Route].
  static void pop() {
    navigatorKey.currentContext?.pop();
  }

  /// Returns a [bool] of whether or not the the navigation stack is poppable.
  static bool canPop() {
    return navigatorKey.currentContext?.canPop() ?? false;
  }

  /// Default constructor.
  AppRouter(this._userService);

  /// User service.
  final UserService _userService;

  /// Router.
  late final GoRouter _router;

  /// Initialization function.
  Future<void> init() async {
    _router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: _userService.isLoggedIn
          ? Routes.gameRoutes.gameListingScreen.location
          : Routes.loginSignupRoutes.loginSignupScreen.location,
      routes: [
        RedirectRoute(
          name: gameModuleRoute,
          routes: [
            Routes.gameRoutes.gameListingScreen,
            Routes.gameRoutes.gameDetailsScreen,
            Routes.gameRoutes.gameCreationScreen,
          ],
        ).goRoute,
        Routes.loginSignupRoutes.loginSignupScreen.goRoute,
      ],
    );
  }

  /// [_router] getter.
  GoRouter get router {
    return _router;
  }
}
