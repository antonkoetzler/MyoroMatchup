import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

@singleton
final class AppRouter {
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
      initialLocation: await _userService.isLoggedIn() ? '/game/listing' : '/login_signup',
      routes: [
        GoRoute(
          path: '/game',
          redirect: (_, __) => '/game/listing',
          routes: [Routes.gameRoutes.gameListingScreen, Routes.gameRoutes.gameDetailsScreen],
        ),
        Routes.loginSignupRoutes.loginSignupScreen,
      ],
    );
  }
}
