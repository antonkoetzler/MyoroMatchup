import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/l10n/app_localizations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

@singleton
final class AppRouter {
  /// [GlobalKey] of [Root] to be able to realize actions like accessing [AppLocalizations] or show
  /// snack bars without needing to pass a [BuildContext] object in, for example, view models.
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  /// Alias function for [MyoroBuildContextExtension.showSnackBar].
  void showSnackBar(Duration duration, MyoroSnackBar snackBar) {
    rootNavigatorKey.currentContext?.showSnackBar(duration: duration, snackBar: snackBar);
  }

  /// Pushes a new route.
  static void push(String route) {
    rootNavigatorKey.currentContext?.push(route);
  }

  /// [AppLocalizations] getter.
  static get localization => AppLocalizations.of(rootNavigatorKey.currentContext!)!;

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
      navigatorKey: rootNavigatorKey,
      initialLocation: await _userService.isLoggedIn()
          ? GameModule.gameListingScreenRoute
          : LoginSignupModule.loginSignupScreenRoute,
      routes: _modulesController.modules.map((m) => m.route).toList(),
    );
  }
}
