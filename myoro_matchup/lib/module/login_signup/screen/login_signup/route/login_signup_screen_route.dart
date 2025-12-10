import 'package:myoro_matchup/myoro_matchup.dart';

/// Route of [LoginSignupScreen].
final class LoginSignupScreenRoute extends NoPayloadRoute {
  LoginSignupScreenRoute(String name) : super(name: name, child: const LoginSignupScreen());
}
