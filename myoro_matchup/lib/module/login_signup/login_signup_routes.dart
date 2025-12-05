import 'package:myoro_matchup/myoro_matchup.dart';

/// Routes of the login signup module.
final class LoginSignupRoutes implements RouteRepository {
  /// [LoginSignupScreen]
  final loginSignupScreen = LoginSignupScreenRoute();

  /// Parent directory.
  @override
  String get parentDirectory {
    return 'login_signup';
  }
}
