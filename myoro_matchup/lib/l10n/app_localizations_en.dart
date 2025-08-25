// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get mmErrorFeedbackSubtitle =>
      'Please verify your connection and try again!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Retry';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Place';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'City';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'State';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Country';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continent';

  @override
  String get visibilityEnumPrivateLabel => 'Private';

  @override
  String get visibilityEnumPublicLabel => 'Public';

  @override
  String get frequencyEnumWeeklyLabel => 'Weekly';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Bi-weekly';

  @override
  String get frequencyEnumMonthlyLabel => 'Monthly';

  @override
  String get frequencyEnumYearlyLabel => 'Yearly';

  @override
  String get gameCreationScreenAppBarTitle => 'New game';

  @override
  String get gameCreationScreenNameFieldLabel => 'Name';

  @override
  String get gameCreationScreenSportFieldLabel => 'Sport';

  @override
  String get gameCreationScreenCompetitivenessFieldLabel => 'Competitiveness';

  @override
  String get gameCreationScreenPlayerQuantityFieldLabel => '# of players';

  @override
  String get gameCreationScreenOneTimePriceFieldLabel => 'One-time price';

  @override
  String get gameCreationScreenMemberPriceFieldLabel => 'Member price';

  @override
  String get gameCreationScreenAgeRangeFieldLabel => 'Age range';

  @override
  String get gameCreationScreenVisibilityFieldLabel => 'Game visibility';

  @override
  String get gameDetailsScreenBodyErrorStateTitle =>
      'Failed to retrieve game details!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Players';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'Players';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Rankings';

  @override
  String get gameListingScreenAppBarTitle => 'MyoroMatchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => 'Error retrieving games!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'No games found!';

  @override
  String get gameListingScreenNewGameButtonText => 'Create game';

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
