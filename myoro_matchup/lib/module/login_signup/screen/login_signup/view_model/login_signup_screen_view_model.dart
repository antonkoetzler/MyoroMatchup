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
  /// Default constructor.
  LoginSignupScreenViewModel(this._authService);

  /// [User] repository.
  final AuthService _authService;

  /// State.
  late final _state = LoginSignupScreenState(_validation, _request, _onSuccess, _onError);

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Updates the [LoginSignupScreenState.formTypeController].
  void formTypeSwitcherButtonOnTapUp() {
    _state.formTypeController.value = switch (_state.formTypeController.value) {
      LoginSignupScreenEnum.login => LoginSignupScreenEnum.signup,
      LoginSignupScreenEnum.signup => LoginSignupScreenEnum.login,
    };
  }

  /// Updates the [LoginSignupScreenState.signupState.countryController].
  void onSignupCountryChanged(MyoroCountryEnum? country) {
    _state.signupState.countryController.value = country;
  }

  /// Form validation function.
  String _validation() {
    switch (_state.formTypeController.value) {
      case LoginSignupScreenEnum.login:
        final loginState = _state.loginState;
        final usernameEmailController = loginState.usernameEmailController;
        final passwordController = loginState.passwordController;

        if (usernameEmailController.text.isEmpty) {
          return localization.loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage;
        }
        if (passwordController.text.isEmpty) {
          return localization.loginSignupScreenLoginFormPasswordFieldEmptyMessage;
        }

        break;
      case LoginSignupScreenEnum.signup:
        final signupState = _state.signupState;
        final nameController = signupState.nameController;
        final usernameController = signupState.usernameController;
        final emailController = signupState.emailController;
        final passwordController = signupState.passwordController;
        final passwordRepeatController = signupState.passwordRepeatController;

        if (nameController.text.isEmpty) {
          return localization.loginSignupScreenSignupFormNameFieldEmptyMessage;
        }
        if (usernameController.text.isEmpty) {
          return localization.loginSignupScreenSignupFormUsernameFieldEmptyMessage;
        }
        if (emailController.text.isEmpty) {
          return localization.loginSignupScreenSignupFormEmailFieldEmptyMessage;
        }
        if (signupState.country == null) {
          return localization.loginSignupScreenSignupFormLocationCountryFieldEmptyMessage;
        }
        if (passwordController.text.isEmpty || passwordRepeatController.text.isEmpty) {
          return localization.loginSignupScreenSignupFormPasswordFieldsEmptyMessage;
        }
        if (passwordController.text != passwordRepeatController.text) {
          return localization.loginSignupScreenSignupFormPasswordFieldsMismatchMessage;
        }

        break;
    }

    return kMyoroEmptyString;
  }

  /// Form request function.
  Future<void> _request() async {
    final formType = _state.formType;

    final loginState = _state.loginState;
    final loginUsernameEmail = loginState.usernameEmail;
    final loginPassword = loginState.password;
    final loginIsEmail = loginUsernameEmail.contains('@');

    final signupState = _state.signupState;
    final signupName = signupState.name;
    final signupUsername = signupState.username;
    final signupEmail = signupState.email;
    final signupCountry = signupState.country;
    final signupPassword = signupState.password;

    return await switch (formType) {
      LoginSignupScreenEnum.login => _authService.login(
        LoginRequestDto(
          username: loginIsEmail ? null : loginUsernameEmail,
          email: loginIsEmail ? loginUsernameEmail : null,
          password: loginPassword,
        ),
      ),
      LoginSignupScreenEnum.signup => _authService.signup(
        SignupRequestDto(
          username: signupUsername,
          name: signupName,
          email: signupEmail,
          country: signupCountry!,
          password: signupPassword,
        ),
      ),
    };
  }

  /// On success function.
  void _onSuccess(_) {
    AppRouter.replace(Routes.homeRoutes.homeScreen.navigate());
  }

  /// On error function.
  void _onError(String errorMessage) {
    MmSnackBarHelper.showSnackBar(
      snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.error, message: errorMessage),
    );
  }

  /// [_state] getter.
  LoginSignupScreenState get state {
    return _state;
  }
}
