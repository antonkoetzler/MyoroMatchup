part of 'login_signup_screen_view_model.dart';

/// State of the [LoginSignupScreenEnum.login] form controllers.
final class LoginSignupScreenLoginState {
  /// Username/email [TextEditingController].
  final _usernameEmailController = TextEditingController();
  TextEditingController get usernameEmailController => _usernameEmailController;

  /// Password [TextEditingController].
  final _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  /// Dispose function.
  void dispose() {
    _usernameEmailController.dispose();
    _passwordController.dispose();
  }
}
