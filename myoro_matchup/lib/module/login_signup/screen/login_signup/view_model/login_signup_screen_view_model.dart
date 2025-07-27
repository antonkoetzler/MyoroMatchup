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
  LoginSignupScreenViewModel(this._userService) {
    _state.formController.addListener(_formControllerListener);
  }

  /// [User] service.
  final UserService _userService;

  /// State.
  late final _state = LoginSignupScreenState(MyoroFormConfiguration<int>(validation: _validation, request: _request));
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

  /// Form validation function.
  String? _validation() {
    switch (_state.formTypeNotifier.value) {
      case LoginSignupScreenEnum.login:
        final loginState = _state.loginState;
        final usernameEmailController = loginState.usernameEmailController;
        final passwordController = loginState.passwordController;

        if (usernameEmailController.text.isEmpty) {
          return AppRouter.localization.loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage;
        }
        if (passwordController.text.isEmpty) {
          return AppRouter.localization.loginSignupScreenLoginFormPasswordFieldEmptyMessage;
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
          return AppRouter.localization.loginSignupScreenSignupFormNameFieldEmptyMessage;
        }
        if (usernameController.text.isEmpty) {
          return AppRouter.localization.loginSignupScreenSignupFormUsernameFieldEmptyMessage;
        }
        if (emailController.text.isEmpty) {
          return AppRouter.localization.loginSignupScreenSignupFormEmailFieldEmptyMessage;
        }
        if (passwordController.text.isEmpty || passwordRepeatController.text.isEmpty) {
          return AppRouter.localization.loginSignupScreenSignupFormPasswordFieldsEmptyMessage;
        }

        break;
    }

    return null;
  }

  /// Form request function.
  Future<int>? _request() async {
    return await _userService.create(User.fake());
  }

  /// Listener of [LoginSignupScreenState.formController].
  void _formControllerListener() {
    final formController = _state.formController;
    final request = formController.request;
    final status = request.status;
    final errorMessage = request.errorMessage;
    if (status.isError) {
      AppRouter.rootNavigatorKey.currentContext?.showSnackBar(
        snackBar: MyoroSnackBar(
          configuration: MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.error, message: errorMessage!),
        ),
      );
    }
    if (status.isSuccess) {
      AppRouter.push(GameModule.gameListingScreenRoute);
    }
  }
}
