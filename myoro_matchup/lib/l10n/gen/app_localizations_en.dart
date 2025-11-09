// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Couldn\'t connect to server, please check your internet and try again.';

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
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

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
  String get sportsEnumFootballLabel => 'Football';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Volleyball';

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
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => 'Error retrieving games!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'No games found!';

  @override
  String get gameListingScreenNewGameButtonText => 'Create game';

  @override
  String get gameCreationScreenAppBarTitle => 'Create game';

  @override
  String get gameCreationScreenNameScreenTitle => 'Name';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Name';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder =>
      'i.e., Weekly Soccer Game';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'Name cannot be empty.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'Frequency & Date/Time';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'Frequency';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'Start';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'End';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Start time cannot be empty.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'End time cannot be empty.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Price';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Member: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Drop-in: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Age Range';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Location';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'Please select a location.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle =>
      'Visibility & Image';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'Profile Picture';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Previous';

  @override
  String get gameCreationScreenButtonNextText => 'Next';

  @override
  String get gameCreationScreenButtonFinishText => 'Finish';

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
      'Password';

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

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Passwords do not match.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerUserScreenText => 'User Screen';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Create Game';
}
