import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// App's router.
final class AppRouter {
  /// TODO: Need to refactor these static strings to place them in the route classes.

  /// Friend module route.
  static const friendModuleRoute = 'friend';

  /// Game module route.
  static const gameModuleRoute = 'game';

  /// Invitation module route.
  static const invitationModuleRoute = 'invitation';

  /// Login signup module route.
  static const loginModuleRoute = 'login_signup';

  /// User module route.
  static const userModuleRoute = 'user';

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
    final homeRoutes = Routes.homeRoutes;
    final homeScreen = homeRoutes.homeScreen;
    final homeScreenLocation = homeScreen.location;

    final loginSignupRoutes = Routes.loginSignupRoutes;
    final loginSignupScreen = loginSignupRoutes.loginSignupScreen;
    final loginSignupScreenLocation = loginSignupScreen.location;

    final gameRoutes = Routes.gameRoutes;
    final gameDetailsScreen = gameRoutes.gameDetailsScreen;
    final gameCreationScreen = gameRoutes.gameCreationScreen;

    _router = GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: _userService.isLoggedIn ? homeScreenLocation : loginSignupScreenLocation,
      // TODO: Need a way to automatically do this.
      routes: [
        Routes.friendRoutes.friendListingScreen.goRoute,
        RedirectRoute(name: gameModuleRoute, routes: [gameDetailsScreen, gameCreationScreen]).goRoute,
        Routes.homeRoutes.homeScreen.goRoute,
        Routes.invitationRoutes.invitationListingScreen.goRoute,
        Routes.loginSignupRoutes.loginSignupScreen.goRoute,
        Routes.userRoutes.userDetailsScreen.goRoute,
      ],
    );
  }

  /// [_router] getter.
  GoRouter get router {
    return _router;
  }
}
