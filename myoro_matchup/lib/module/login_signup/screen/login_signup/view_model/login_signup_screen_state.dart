part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  /// Default constructor.
  LoginSignupScreenState(MyoroRequestControllerRequest<bool> existsByUsernameOrEmailRequestCallback)
    : _existsByUsernameOrEmailRequestController = MyoroRequestController(existsByUsernameOrEmailRequestCallback);

  /// Provider being used to login.
  final _providerBeingUsedToLoginController = ValueNotifier<OAuthProvider?>(null);

  /// Form key.
  final _formKey = GlobalKey<FormState>();

  /// Username input [ValueNotifier].
  final _usernameInputController = TextEditingController();

  /// [MyoroRequestController] of the request to fetch if a username/email with said username exists.
  final MyoroRequestController<bool> _existsByUsernameOrEmailRequestController;

  /// Version text [ValueNotifier].
  final _versionTextController = ValueNotifier(kMyoroEmptyString);

  /// Dispose function.
  void dispose() {
    _providerBeingUsedToLoginController.dispose();
    _usernameInputController.dispose();
    _existsByUsernameOrEmailRequestController.dispose();
    _versionTextController.dispose();
  }

  /// [_providerBeingUsedToLoginController] getter.
  ValueNotifier<OAuthProvider?> get providerBeingUsedToLoginController {
    return _providerBeingUsedToLoginController;
  }

  /// Getter of [_providerBeingUsedToLoginController]'s value.
  OAuthProvider? get providerBeingUsedToLogin {
    return _providerBeingUsedToLoginController.value;
  }

  /// [_formKey] getter.
  GlobalKey<FormState> get formKey {
    return _formKey;
  }

  /// [_usernameInputController] getter.
  TextEditingController get usernameInputController {
    return _usernameInputController;
  }

  /// Getter of [_usernameInputController]'s value.
  String get username {
    return _usernameInputController.text;
  }

  /// [_existsByUsernameOrEmailRequestController] getter.
  MyoroRequestController<bool> get existsByUsernameOrEmailRequestController {
    return _existsByUsernameOrEmailRequestController;
  }

  /// Getter of [_existsByUsernameOrEmailRequestController]'s value.
  MyoroRequest<bool> get existsByUsernameOrEmailRequest {
    return _existsByUsernameOrEmailRequestController.value;
  }

  /// [_versionTextController] getter.
  ValueNotifier<String> get versionTextController {
    return _versionTextController;
  }

  /// Getter of [_versionTextController]'s value.
  String get versionText {
    return _versionTextController.value;
  }

  /// [_versionTextController] setter.
  set versionText(String value) {
    _versionTextController.value = value;
  }

  /// [_providerBeingUsedToLoginController] setter.
  set providerBeingUsedToLogin(OAuthProvider? value) {
    _providerBeingUsedToLoginController.value = value;
  }
}
