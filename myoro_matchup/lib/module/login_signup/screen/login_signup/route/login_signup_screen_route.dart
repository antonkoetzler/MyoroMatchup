import 'package:myoro_matchup/myoro_matchup.dart';

/// Route of [LoginSignupScreen].
final class LoginSignupScreenRoute extends NoPayloadRoute {
  LoginSignupScreenRoute() : super(name: Routes.loginSignupRoutes.parentDirectory, child: const LoginSignupScreen());
}
