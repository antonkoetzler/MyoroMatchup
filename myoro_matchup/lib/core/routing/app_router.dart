import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

@singleton
final class AppRouter {
  static const loginModuleRoute = 'login_signup';
  static const gameModuleRoute = '/game';

  /// Navigates to a route.
  ///
  /// i.e. [AppRouter.push(Routes.gameRoutes.gameListingScreen.navigate())]
  static void push(RouteNavigationConfiguration navigationConfiguration) {
    navigatorKey.currentContext?.push(navigationConfiguration.location, extra: navigationConfiguration.payload);
  }

  /// Pops the current [Route].
  static void pop() {
    navigatorKey.currentContext?.pop();
  }

  /// Returns a [bool] of whether or not the the navigation stack is poppable.
  static bool canPop() {
    return navigatorKey.currentContext?.canPop() ?? false;
  }

  AppRouter(this._userService);

  final UserService _userService;

  GoRouter? _router;
  GoRouter get router {
    assert(_router != null, '[Router.router]: [_router] not initialized.');
    return _router!;
  }

  /// Initialization function.
  Future<void> init() async {
    if (_router != null) return;

    _router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: await _userService.isLoggedIn()
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
}
