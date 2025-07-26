import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Login signup [Module].
final class LoginSignupModule extends Module {
  static const loginSignupScreenRoute = '/login-signup';

  LoginSignupModule()
    : super(
        route: GoRoute(path: loginSignupScreenRoute, builder: (_, _) => const LoginSignupScreen()),
        themeExtensionsBuilder: (_, _, _) => const [LoginSignupScreenThemeExtension.builder()],
      );
}
