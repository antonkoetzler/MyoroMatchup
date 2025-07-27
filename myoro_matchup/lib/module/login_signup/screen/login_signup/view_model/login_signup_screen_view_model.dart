import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'login_signup_screen_login_state.dart';
part 'login_signup_screen_signup_state.dart';
part 'login_signup_screen_state.dart';

/// View model of [LoginSignupScreen].
@injectable
final class LoginSignupScreenViewModel {
  LoginSignupScreenViewModel(this._userService);

  /// [User] service.
  final UserService _userService;

  /// State.
  late final _state = LoginSignupScreenState(MyoroFormConfiguration<int>(request: _request));
  LoginSignupScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Updates the [LoginSignupScreenState.formTypeNotifier].
  void formTypeSwitcherButtonOnTapUp() {
    _state.formTypeNotifier.value = switch (_state.formTypeNotifier.value) {
      LoginSignupScreenEnum.login => LoginSignupScreenEnum.signup,
      LoginSignupScreenEnum.signup => LoginSignupScreenEnum.login,
    };
  }

  /// Validation function of the username/email field of the [LoginSignupScreenEnum.login] form.
  String? loginFormUsernameEmailValidation(_) {
    final loginState = _state.loginState;
    final usernameEmailController = loginState.usernameEmailController;

    if (usernameEmailController.text.isEmpty) {
      return localization.loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage;
    }

    return null;
  }

  /// Validation function of the password field of the [LoginSignupScreenEnum.login] form.
  String? loginFormPasswordValidation(_) {
    final loginState = _state.loginState;
    final passwordController = loginState.passwordController;

    if (passwordController.text.isEmpty) {
      return localization.loginSignupScreenLoginFormPasswordFieldEmptyMessage;
    }

    return null;
  }

  /// Validation function of the name field of the [LoginSignupScreenEnum.signup] form.
  String? signupFormNameValidation(_) {
    final signupState = _state.signupState;
    final nameController = signupState.nameController;

    if (nameController.text.isEmpty) {
      return localization.loginSignupScreenSignupFormNameFieldEmptyMessage;
    }

    return null;
  }

  /// Validation function of the username field of the [LoginSignupScreenEnum.signup] form.
  String? signupFormUsernameValidation(_) {
    final signupState = _state.signupState;
    final usernameController = signupState.usernameController;

    if (usernameController.text.isEmpty) {
      return localization.loginSignupScreenSignupFormUsernameFieldEmptyMessage;
    }

    return null;
  }

  /// Validation function of the email field of the [LoginSignupScreenEnum.signup] form.
  String? signupFormEmailValidation(_) {
    final signupState = _state.signupState;
    final emailController = signupState.emailController;

    if (emailController.text.isEmpty) {
      return localization.loginSignupScreenSignupFormEmailFieldEmptyMessage;
    }

    return null;
  }

  /// Validation function of the password field of the [LoginSignupScreenEnum.signup] form.
  String? signupFormPasswordValidation(_) {
    final signupState = _state.signupState;
    final passwordController = signupState.passwordController;
    final passwordRepeatController = signupState.passwordRepeatController;

    if (passwordController.text.isEmpty || passwordRepeatController.text.isEmpty) {
      return localization.loginSignupScreenSignupFormPasswordFieldsEmptyMessage;
    }

    return null;
  }

  /// Form request function.
  Future<int>? _request() async {
    // TODO
    return await _userService.create(User.fake());
  }
}
