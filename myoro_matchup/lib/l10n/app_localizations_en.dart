// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get myoroErrorFeedbackActionButtonText => 'Retry';

  @override
  String get gameListingScreenAppBarTitle => 'MyoroMatchup';

  @override
  String get gameListingScreenBodySuccessStateEmptyMessage => 'No games found!';

  @override
  String get gameDetailsScreenErrorStateTitle =>
      'Failed to retrieve game details!';

  @override
  String get gameDetailsScreenErrorStateSubtitle =>
      'Please verify your connection and try again.';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Username/email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Password';

  @override
  String get loginSignupScreenLoginLoginButton => 'Login';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Forgot password?';

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
      'Repeat password';

  @override
  String get loginSignupScreenSignupSignupButton => 'Signup';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'New to MyoroMatchup? Signup!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'New to MyoroMatchup? Login!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Username/email cannot be empty.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'Password cannot be empty.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'Name cannot be empty.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'Username cannot be empty.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'Email cannot be empty.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Password fields cannot be empty.';
}
