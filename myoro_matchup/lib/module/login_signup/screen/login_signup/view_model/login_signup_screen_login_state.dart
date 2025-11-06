part of 'login_signup_screen_view_model.dart';

/// State of the [LoginSignupScreenEnum.login] form controllers.
final class LoginSignupScreenLoginState {
  /// Username/email [FocusNode].
  final _usernameEmailFocusNode = FocusNode();

  /// Password [FocusNode].
  final _passwordFocusNode = FocusNode();

  /// Username/email [TextEditingController].
  final _usernameEmailController = TextEditingController();

  /// Password [TextEditingController].
  final _passwordController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _usernameEmailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _usernameEmailController.dispose();
    _passwordController.dispose();
  }

  /// [_usernameEmailFocusNode] getter.
  FocusNode get usernameEmailFocusNode {
    return _usernameEmailFocusNode;
  }

  /// [_passwordFocusNode] getter.
  FocusNode get passwordFocusNode {
    return _passwordFocusNode;
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
