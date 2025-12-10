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

    final friendRoutes = MmRoutes.friendRoutes;
    final friendListingScreen = friendRoutes.friendListingScreen;
    final friendListingScreenGoRoute = friendListingScreen.goRoute;

    final gameRoutes = MmRoutes.gameRoutes;
    final gameRoutesRootLocation = gameRoutes.rootLocation;
    final gameDetailsScreen = gameRoutes.gameDetailsScreen;
    final gameCreationScreen = gameRoutes.gameCreationScreen;
    final gameRedirectRoute = RedirectRoute(
      name: gameRoutesRootLocation,
      routes: [gameDetailsScreen, gameCreationScreen],
    );
    final gameRedirectRouteGoRoute = gameRedirectRoute.goRoute;

    final homeRoutes = MmRoutes.homeRoutes;
    final homeScreen = homeRoutes.homeScreen;
    final homeScreenGoRoute = homeScreen.goRoute;
    final homeScreenLocation = homeScreen.location;

    final invitationRoutes = MmRoutes.invitationRoutes;
    final invitationListingScreen = invitationRoutes.invitationListingScreen;
    final invitationListingScreenGoRoute = invitationListingScreen.goRoute;

    final loginSignupRoutes = MmRoutes.loginSignupRoutes;
    final loginSignupScreen = loginSignupRoutes.loginSignupScreen;
    final loginSignupScreenGoRoute = loginSignupScreen.goRoute;
    final loginSignupScreenLocation = loginSignupScreen.location;

    final userRoutes = MmRoutes.userRoutes;
    final userDetailsScreen = userRoutes.userDetailsScreen;
    final userDetailsScreenGoRoute = userDetailsScreen.goRoute;

    final isLoggedIn = _userService.isLoggedIn;
    final initialLocation = isLoggedIn ? homeScreenLocation : loginSignupScreenLocation;
    MmLogger.info('[MmRouter.init]: User logged in: $isLoggedIn, initial location: $initialLocation.');

    _router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: initialLocation,
      routes: [
        friendListingScreenGoRoute,
        gameRedirectRouteGoRoute,
        homeScreenGoRoute,
        invitationListingScreenGoRoute,
        loginSignupScreenGoRoute,
        userDetailsScreenGoRoute,
      ],
    );
    MmLogger.info('[MmRouter.init]: App router initialized.');
  }

  /// [_router] getter.
  GoRouter get router {
    return _router;
  }
}
