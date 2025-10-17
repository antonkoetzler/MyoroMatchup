part of 'login_signup_screen_view_model.dart';

/// State to encapsulate the controllers of [LoginSignupScreen]'s [LoginSignupScreenEnum.signup]'s form.
final class LoginSignupScreenSignupState {
  /// Name controller.
  final _nameController = TextEditingController();

  /// Username controller.
  final _usernameController = TextEditingController();

  /// Email controller.
  final _emailController = TextEditingController();

  /// Password controller.
  final _passwordController = TextEditingController();

  /// Repeated password controller.
  final _passwordRepeatController = TextEditingController();

  /// Dispose function.
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
  }

  /// [_nameController] getter.
  TextEditingController get nameController {
    return _nameController;
  }

  /// Getter of [_nameController]'s [TextEditingController.text].
  String get name {
    return _nameController.text;
  }

  /// [_usernameController] getter.
  TextEditingController get usernameController {
    return _usernameController;
  }

  /// Getter of [_usernameController]'s [TextEditingController.text].
  String get username {
    return _usernameController.text;
  }

  /// [_emailController] getter.
  TextEditingController get emailController {
    return _emailController;
  }

  /// Getter of [_emailController]'s [TextEditingController.text].
  String get email {
    return _emailController.text;
  }

  /// [_passwordController] getter.
  TextEditingController get passwordController {
    return _passwordController;
  }

  /// Getter of [_passwordController]'s [TextEditingController.text].
  String get password {
    return _passwordController.text;
  }

  /// [_passwordRepeatController] getter.
  TextEditingController get passwordRepeatController {
    return _passwordRepeatController;
  }

  /// Getter of [_passwordRepeatController]'s [TextEditingController.text].
  String get passwordRepeat {
    return _passwordRepeatController.text;
  }
}
