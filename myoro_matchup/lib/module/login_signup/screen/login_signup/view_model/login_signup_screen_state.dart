part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  LoginSignupScreenState(MyoroFormConfiguration formConfiguration)
    : _formController = MyoroFormController(configuration: formConfiguration);

  /// [ValueNotifier] that controls which [LoginSignupScreenEnum] form is selected.
  final _formTypeController = ValueNotifier(LoginSignupScreenEnum.login);

  /// Form controller of [LoginSignupScreen].
  final MyoroFormController<void> _formController;

  /// [LoginSignupScreenEnum.login] state.
  final _loginState = LoginSignupScreenLoginState();

  /// [LoginSignupScreenEnum.signup] state.
  final _signupState = LoginSignupScreenSignupState();

  /// Dispose function.
  void dispose() {
    _formTypeController.dispose();
    _formController.dispose();
    _loginState.dispose();
    _signupState.dispose();
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
}
