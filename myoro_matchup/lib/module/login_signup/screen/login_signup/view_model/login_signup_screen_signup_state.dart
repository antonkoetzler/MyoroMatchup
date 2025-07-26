part of 'login_signup_screen_view_model.dart';

/// State to encapsulate the controllers of [LoginSignupScreen]'s [LoginSignupScreenEnum.signup]'s form.
final class LoginSignupScreenSignupState {
  /// Name controller.
  final _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  /// Username controller.
  final _usernameController = TextEditingController();
  TextEditingController get usernameController => _usernameController;

  /// Email controller.
  final _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  /// Password controller.
  final _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  /// Repeated password controller.
  final _passwordRepeatController = TextEditingController();
  TextEditingController get passwordRepeatController => _passwordRepeatController;

  /// Dispose function.
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
  }
}
