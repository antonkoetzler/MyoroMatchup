part of 'login_signup_screen_view_model.dart';

/// State of [LoginSignupScreenViewModel].
final class LoginSignupScreenState {
  /// Version text [ValueNotifier].
  final _versionTextController = ValueNotifier(kMyoroEmptyString);

  /// Dispose function.
  void dispose() {
    _versionTextController.dispose();
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
}
