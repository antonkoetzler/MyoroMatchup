import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en'), Locale('es'), Locale('pt')];

  /// No description provided for @httpClientConnectionExceptionMessage.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t connect to server, please check your internet and try again.'**
  String get httpClientConnectionExceptionMessage;

  /// No description provided for @mmErrorFeedbackSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Please verify your connection and try again!'**
  String get mmErrorFeedbackSubtitle;

  /// No description provided for @mmErrorFeedbackActionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get mmErrorFeedbackActionButtonText;

  /// No description provided for @mmLocationInputTypeEnumPlaceLabel.
  ///
  /// In en, this message translates to:
  /// **'Place'**
  String get mmLocationInputTypeEnumPlaceLabel;

  /// No description provided for @mmLocationInputTypeEnumCityLabel.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get mmLocationInputTypeEnumCityLabel;

  /// No description provided for @mmLocationInputTypeEnumStateLabel.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get mmLocationInputTypeEnumStateLabel;

  /// No description provided for @mmLocationInputTypeEnumCountryLabel.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get mmLocationInputTypeEnumCountryLabel;

  /// No description provided for @mmLocationInputTypeEnumContinentLabel.
  ///
  /// In en, this message translates to:
  /// **'Continent'**
  String get mmLocationInputTypeEnumContinentLabel;

  /// No description provided for @visibilityEnumPrivateLabel.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get visibilityEnumPrivateLabel;

  /// No description provided for @visibilityEnumPublicLabel.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get visibilityEnumPublicLabel;

  /// No description provided for @frequencyEnumWeeklyLabel.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get frequencyEnumWeeklyLabel;

  /// No description provided for @frequencyEnumBiWeeklyLabel.
  ///
  /// In en, this message translates to:
  /// **'Bi-weekly'**
  String get frequencyEnumBiWeeklyLabel;

  /// No description provided for @frequencyEnumMonthlyLabel.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get frequencyEnumMonthlyLabel;

  /// No description provided for @frequencyEnumYearlyLabel.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get frequencyEnumYearlyLabel;

  /// No description provided for @sportsEnumFootballLabel.
  ///
  /// In en, this message translates to:
  /// **'Football'**
  String get sportsEnumFootballLabel;

  /// No description provided for @sportsEnumFutsalLabel.
  ///
  /// In en, this message translates to:
  /// **'Futsal'**
  String get sportsEnumFutsalLabel;

  /// No description provided for @sportsEnumFut7Label.
  ///
  /// In en, this message translates to:
  /// **'Fut7'**
  String get sportsEnumFut7Label;

  /// No description provided for @sportsEnumVolleyballLabel.
  ///
  /// In en, this message translates to:
  /// **'Volleyball'**
  String get sportsEnumVolleyballLabel;

  /// No description provided for @gameDetailsScreenBodyErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve game details!'**
  String get gameDetailsScreenBodyErrorStateTitle;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabText.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewPlayersTabText.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewRankingsTabText.
  ///
  /// In en, this message translates to:
  /// **'Rankings'**
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText;

  /// No description provided for @gameListingScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Myoro Matchup'**
  String get gameListingScreenAppBarTitle;

  /// No description provided for @gameListingScreenBodyErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Error retrieving games!'**
  String get gameListingScreenBodyErrorStateTitle;

  /// No description provided for @gameListingScreenBodySuccessStateEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No games found!'**
  String get gameListingScreenBodySuccessStateEmptyTitle;

  /// No description provided for @gameListingScreenNewGameButtonText.
  ///
  /// In en, this message translates to:
  /// **'Create game'**
  String get gameListingScreenNewGameButtonText;

  /// No description provided for @gameCreationScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Create game'**
  String get gameCreationScreenAppBarTitle;

  /// No description provided for @gameCreationScreenNameScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get gameCreationScreenNameScreenTitle;

  /// No description provided for @gameCreationScreenNameScreenNameInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'i.e., Soccer...'**
  String get gameCreationScreenNameScreenNameInputPlaceholder;

  /// No description provided for @gameCreationScreenSportScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Sport'**
  String get gameCreationScreenSportScreenTitle;

  /// No description provided for @gameCreationScreenFrequencyDayTimeScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Frequency & Date/Time'**
  String get gameCreationScreenFrequencyDayTimeScreenTitle;

  /// No description provided for @gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel;

  /// No description provided for @gameCreationScreenButtonPreviousText.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get gameCreationScreenButtonPreviousText;

  /// No description provided for @gameCreationScreenButtonNextText.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get gameCreationScreenButtonNextText;

  /// No description provided for @gameCreationScreenButtonFinishText.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get gameCreationScreenButtonFinishText;

  /// No description provided for @loginSignupScreenLoginUsernameEmailInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Username/email'**
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder;

  /// No description provided for @loginSignupScreenLoginPasswordInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginSignupScreenLoginPasswordInputPlaceholder;

  /// No description provided for @loginSignupScreenLoginLoginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginSignupScreenLoginLoginButton;

  /// No description provided for @loginSignupScreenLoginForgotPasswordButton.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get loginSignupScreenLoginForgotPasswordButton;

  /// No description provided for @loginSignupScreenSignupNameInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get loginSignupScreenSignupNameInputPlaceholder;

  /// No description provided for @loginSignupScreenSignupUsernameInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get loginSignupScreenSignupUsernameInputPlaceholder;

  /// No description provided for @loginSignupScreenSignupEmailInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get loginSignupScreenSignupEmailInputPlaceholder;

  /// No description provided for @loginSignupScreenSignupPasswordInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginSignupScreenSignupPasswordInputPlaceholder;

  /// No description provided for @loginSignupScreenSignupPasswordRepeatInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Repeat password'**
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder;

  /// No description provided for @loginSignupScreenSignupSignupButton.
  ///
  /// In en, this message translates to:
  /// **'Signup'**
  String get loginSignupScreenSignupSignupButton;

  /// No description provided for @loginSignupScreenFormTypeSwitcherButtonLoginText.
  ///
  /// In en, this message translates to:
  /// **'New to MyoroMatchup? Signup!'**
  String get loginSignupScreenFormTypeSwitcherButtonLoginText;

  /// No description provided for @loginSignupScreenFormTypeSwitcherButtonSignupText.
  ///
  /// In en, this message translates to:
  /// **'New to MyoroMatchup? Login!'**
  String get loginSignupScreenFormTypeSwitcherButtonSignupText;

  /// No description provided for @loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Username/email cannot be empty.'**
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage;

  /// No description provided for @loginSignupScreenLoginFormPasswordFieldEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty.'**
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage;

  /// No description provided for @loginSignupScreenSignupFormNameFieldEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty.'**
  String get loginSignupScreenSignupFormNameFieldEmptyMessage;

  /// No description provided for @loginSignupScreenSignupFormUsernameFieldEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Username cannot be empty.'**
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage;

  /// No description provided for @loginSignupScreenSignupFormEmailFieldEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty.'**
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage;

  /// No description provided for @loginSignupScreenSignupFormPasswordFieldsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Password fields cannot be empty.'**
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage;

  /// No description provided for @loginSignupScreenSignupFormPasswordFieldsMismatchMessage.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match.'**
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage;

  /// No description provided for @mmDayEnumMondayLabel.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get mmDayEnumMondayLabel;

  /// No description provided for @mmDayEnumTuesdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get mmDayEnumTuesdayLabel;

  /// No description provided for @mmDayEnumWednesdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get mmDayEnumWednesdayLabel;

  /// No description provided for @mmDayEnumThursdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get mmDayEnumThursdayLabel;

  /// No description provided for @mmDayEnumFridayLabel.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get mmDayEnumFridayLabel;

  /// No description provided for @mmDayEnumSaturdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get mmDayEnumSaturdayLabel;

  /// No description provided for @mmDayEnumSundayLabel.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get mmDayEnumSundayLabel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
