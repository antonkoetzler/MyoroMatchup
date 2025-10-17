part of 'login_signup_screen_view_model.dart';

/// State of the [LoginSignupScreenEnum.login] form controllers.
final class LoginSignupScreenLoginState {
  /// Username/email [TextEditingController].
  final _usernameEmailController = TextEditingController();

  /// Password [TextEditingController].
  final _passwordController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _usernameEmailController.dispose();
    _passwordController.dispose();
  }

  /// [_usernameEmailController] getter.
  TextEditingController get usernameEmailController {
    return _usernameEmailController;
  }

  /// Getter of [_usernameEmailController]'s [TextEditingController.text].
  String get usernameEmail {
    return _usernameEmailController.text;
  }

  /// [_passwordController] getter.
  TextEditingController get passwordController {
    return _passwordController;
  }

  /// Getter of [_passwordController]'s [TextEditingController.text].
  String get password {
    return _passwordController.text;
  }
}
