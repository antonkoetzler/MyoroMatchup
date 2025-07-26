import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

@singleton
final class AppRouter {
  AppRouter(this._modulesController, this._userService);

  final ModulesController _modulesController;
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
      initialLocation: await _userService.isLoggedIn()
          ? GameModule.gameScreenRoute
          : LoginSignupModule.loginSignupScreenRoute,
      routes: _modulesController.modules.map((m) => m.route).toList(),
    );
  }
}
