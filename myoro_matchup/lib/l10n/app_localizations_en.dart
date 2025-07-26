// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get gameScreenAppBarTitle => 'MyoroMatchup';

  @override
  String get gameScreenBodySuccessStateEmptyMessage => 'No games found!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Username/email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Password';

  @override
  String get loginSignupScreenLoginLoginButton => 'Login';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Forward password?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Name';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Username';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Password';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder =>
      'Repeated password';

  @override
  String get loginSignupScreenSignupSignupButton => 'Signup';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'New to MyoroMatchup? Signup!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'New to MyoroMatchup? Login!';
}
