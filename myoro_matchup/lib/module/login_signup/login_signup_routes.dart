import 'package:myoro_matchup/myoro_matchup.dart';

/// Routes of the login signup module.
final class LoginSignupRoutes extends RouteRepository {
  /// Default constructor.
  LoginSignupRoutes(String rootLocation)
    : _loginSignupScreen = LoginSignupScreenRoute(rootLocation),
      super(rootLocation: rootLocation);

  /// [LoginSignupScreen]
  final LoginSignupScreenRoute _loginSignupScreen;

  /// [_loginSignupScreen] getter.
  LoginSignupScreenRoute get loginSignupScreen {
    return _loginSignupScreen;
  }
}
