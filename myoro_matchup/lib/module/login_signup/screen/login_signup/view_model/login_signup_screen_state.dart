part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  LoginSignupScreenState(
    MyoroFormValidation validation,
    MyoroFormRequest<void> request,
    MyoroFormOnSuccess<void> onSuccess,
    MyoroFormOnError onError,
  ) : _formController = MyoroFormController(
        validation: validation,
        request: request,
        onSuccess: onSuccess,
        onError: onError,
      );

  /// [ValueNotifier] that controls which [LoginSignupScreenEnum] form is selected.
  final _formTypeController = ValueNotifier(LoginSignupScreenEnum.login);

  /// Form controller of [LoginSignupScreen].
  final MyoroFormController<void> _formController;

  /// [LoginSignupScreenEnum.login] state.
  final _loginState = LoginSignupScreenLoginState();

  /// [LoginSignupScreenEnum.signup] state.
  final _signupState = LoginSignupScreenSignupState();

  /// Forgot password [TextEditingController].
  final _forgotPasswordEmailController = TextEditingController();

  /// Form switcher actions button key.
  final _formSwitcherActionsButtonKey = GlobalKey();

  /// [ValueNotifier] of the height of the form switcher and actions buttons.
  final _formSwitcherActionsButtonHeightController = ValueNotifier<double?>(null);

  /// Dispose function.
  void dispose() {
    _formTypeController.dispose();
    _formController.dispose();
    _loginState.dispose();
    _signupState.dispose();
    _forgotPasswordEmailController.dispose();
    _formSwitcherActionsButtonHeightController.dispose();
  }

  /// [_formTypeController] getter.
  ValueNotifier<LoginSignupScreenEnum> get formTypeController {
    return _formTypeController;
  }

  /// Getter of [_formTypeController]'s value.
  LoginSignupScreenEnum get formType {
    return _formTypeController.value;
  }

  /// [_formController] getter.
  MyoroFormController<void> get formController {
    return _formController;
  }

  /// [_loginState] getter.
  LoginSignupScreenLoginState get loginState {
    return _loginState;
  }

  /// [_signupState] getter.
  LoginSignupScreenSignupState get signupState {
    return _signupState;
  }

  /// [_forgotPasswordEmailController] getter.
  TextEditingController get forgotPasswordEmailController {
    return _forgotPasswordEmailController;
  }

  /// Getter of [_forgotPasswordEmailController]'s [TextEditingController.text].
  String get forgotPasswordEmail {
    return _forgotPasswordEmailController.text;
  }

  /// [_formSwitcherActionsButtonKey] getter.
  GlobalKey get formSwitcherActionsButtonKey {
    return _formSwitcherActionsButtonKey;
  }

  /// [_formSwitcherActionsButtonHeightController] getter.
  ValueNotifier<double?> get formSwitcherActionsButtonHeightController {
    return _formSwitcherActionsButtonHeightController;
  }

  /// Getter of [_formSwitcherActionsButtonHeightController]'s value.
  double? get formSwitcherActionsButtonHeight {
    return _formSwitcherActionsButtonHeightController.value;
  }

  /// [_formSwitcherActionsButtonHeightController] setter.
  set formSwitcherActionsButtonHeight(double? value) {
    _formSwitcherActionsButtonHeightController.value = value;
  }
}
