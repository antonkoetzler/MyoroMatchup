part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  LoginSignupScreenState(MyoroFormConfiguration<int> formConfiguration) : _formController = MyoroFormController(configuration: formConfiguration);

  /// [ValueNotifier] that controls which [LoginSignupScreenEnum] form is selected.
  final _formTypeController = ValueNotifier(LoginSignupScreenEnum.login);
  ValueNotifier<LoginSignupScreenEnum> get formTypeController => _formTypeController;

  /// Form controller of [LoginSignupScreen].
  final MyoroFormController<int> _formController;
  MyoroFormController<int> get formController => _formController;

  /// [LoginSignupScreenEnum.login] state.
  final _loginState = LoginSignupScreenLoginState();
  LoginSignupScreenLoginState get loginState => _loginState;

  /// [LoginSignupScreenEnum.signup] state.
  final _signupState = LoginSignupScreenSignupState();
  LoginSignupScreenSignupState get signupState => _signupState;

  /// Dispose function.
  void dispose() {
    _formTypeController.dispose();
    _formController.dispose();
    _loginState.dispose();
    _signupState.dispose();
  }
}
