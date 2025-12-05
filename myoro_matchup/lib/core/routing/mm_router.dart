import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// App's router.
final class MmRouter {
  /// Navigates to a route.
  ///
  /// i.e. [MmRouter.push(Routes.gameRoutes.gameListingScreen.navigate())]
  static void push(RouteNavigationConfiguration navigationConfiguration) {
    navigatorKey.currentContext?.push(navigationConfiguration.location, extra: navigationConfiguration.payload);
  }

  /// Replaces the current route stack with the provided route.
  ///
  /// i.e. [MmRouter.replace(Routes.gameRoutes.gameListingScreen.navigate())]
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
  MmRouter(this._userService);

  /// User service.
  final UserService _userService;

  /// Router.
  late final GoRouter _router;

  /// Initialization function.
  Future<void> init() async {
    MmLogger.info('[MmRouter.init]: Initializing app router...');
    final homeRoutes = Routes.homeRoutes;
    final homeScreen = homeRoutes.homeScreen;
    final homeScreenLocation = homeScreen.location;

    final loginSignupRoutes = Routes.loginSignupRoutes;
    final loginSignupScreen = loginSignupRoutes.loginSignupScreen;
    final loginSignupScreenLocation = loginSignupScreen.location;

    final gameRoutes = Routes.gameRoutes;
    final gameDetailsScreen = gameRoutes.gameDetailsScreen;
    final gameCreationScreen = gameRoutes.gameCreationScreen;

    final isLoggedIn = _userService.isLoggedIn;
    final initialLocation = isLoggedIn ? homeScreenLocation : loginSignupScreenLocation;
    MmLogger.info('[MmRouter.init]: User logged in: $isLoggedIn, initial location: $initialLocation.');

    _router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: initialLocation,
      routes: [
        Routes.friendRoutes.friendListingScreen.goRoute,
        RedirectRoute(name: Routes.gameRoutes.parentDirectory, routes: [gameDetailsScreen, gameCreationScreen]).goRoute,
        Routes.homeRoutes.homeScreen.goRoute,
        Routes.invitationRoutes.invitationListingScreen.goRoute,
        Routes.loginSignupRoutes.loginSignupScreen.goRoute,
        Routes.userRoutes.userDetailsScreen.goRoute,
      ],
    );
    MmLogger.success('[MmRouter.init]: App router initialized.');
  }

  /// [_router] getter.
  GoRouter get router {
    return _router;
  }
}
