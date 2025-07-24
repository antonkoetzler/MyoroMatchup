import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

@singleton
final class AppRouter {
  GoRouter? _router;
  GoRouter get router {
    assert(_router != null, '[Router.router]: [_router] not initialized.');
    return _router!;
  }

  /// Initialization function.
  void init({required bool isLoggedIn}) {
    if (_router != null) return;
    _router = GoRouter(
      // Make a class to store all of the route names instead of using hard-coded strings.
      initialLocation: isLoggedIn ? '/game' : '/login-signup',
      routes: [
        GoRoute(path: '/game', builder: (_, _) => const GameScreen()),
        GoRoute(path: '/login-signup', builder: (_, _) => const LoginSignupScreen()),
      ],
    );
  }
}
