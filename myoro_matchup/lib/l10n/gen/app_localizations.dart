import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW'),
  ];

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

  /// No description provided for @mmEmptyFeedbackActionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get mmEmptyFeedbackActionButtonText;

  /// No description provided for @mmSuccessFeedbackSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Operation completed successfully!'**
  String get mmSuccessFeedbackSubtitle;

  /// No description provided for @mmSuccessFeedbackActionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get mmSuccessFeedbackActionButtonText;

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

  /// No description provided for @mmLocationInputItemCityCountryText.
  ///
  /// In en, this message translates to:
  /// **'{city}, {emoji} {countryName}'**
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  );

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

  /// No description provided for @invitationStatusEnumPendingLabel.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get invitationStatusEnumPendingLabel;

  /// No description provided for @invitationStatusEnumAcceptedLabel.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get invitationStatusEnumAcceptedLabel;

  /// No description provided for @invitationStatusEnumRejectedLabel.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get invitationStatusEnumRejectedLabel;

  /// No description provided for @invitationStatusEnumExpiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get invitationStatusEnumExpiredLabel;

  /// No description provided for @invitationStatusEnumCancelledLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get invitationStatusEnumCancelledLabel;

  /// No description provided for @gameDetailsScreenBodyErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve game details!'**
  String get gameDetailsScreenBodyErrorStateTitle;

  /// No description provided for @invitationListingScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Invitations'**
  String get invitationListingScreenAppBarTitle;

  /// No description provided for @invitationListingScreenBodyErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve invitations!'**
  String get invitationListingScreenBodyErrorStateTitle;

  /// No description provided for @invitationListingScreenBodySuccessStateEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No invitations found!'**
  String get invitationListingScreenBodySuccessStateEmptyTitle;

  /// No description provided for @invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel;

  /// No description provided for @invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel;

  /// No description provided for @invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText;

  /// No description provided for @invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabText.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewPlayersTabText.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Invite Player'**
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText;

  /// No description provided for @gameDetailsScreenInvitationBottomSheetTitleText.
  ///
  /// In en, this message translates to:
  /// **'Invite Player'**
  String get gameDetailsScreenInvitationBottomSheetTitleText;

  /// No description provided for @gameDetailsScreenInvitationBottomSheetUserSearchInputItemText.
  ///
  /// In en, this message translates to:
  /// **'{username} ({name})'**
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  );

  /// No description provided for @gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search users...'**
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder;

  /// No description provided for @gameDetailsScreenInvitationBottomSheetMessageInputLabel.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel;

  /// No description provided for @gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText;

  /// No description provided for @gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewRankingsTabText.
  ///
  /// In en, this message translates to:
  /// **'Rankings'**
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel.
  ///
  /// In en, this message translates to:
  /// **'Primary Day'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel.
  ///
  /// In en, this message translates to:
  /// **'Primary Times'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel.
  ///
  /// In en, this message translates to:
  /// **'Bi-weekly Day'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel.
  ///
  /// In en, this message translates to:
  /// **'Bi-weekly Times'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Member Price'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Drop-in Price'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Age Range'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel;

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData.
  ///
  /// In en, this message translates to:
  /// **'{minAge} to {maxAge}'**
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  );

  /// No description provided for @gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Visibility'**
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel;

  /// No description provided for @homeScreenAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Myoro Matchup'**
  String get homeScreenAppBarTitle;

  /// No description provided for @homeScreenBodyErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Error retrieving games!'**
  String get homeScreenBodyErrorStateTitle;

  /// No description provided for @homeScreenBodySuccessStateEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No games found!'**
  String get homeScreenBodySuccessStateEmptyTitle;

  /// No description provided for @homeScreenNewGameButtonText.
  ///
  /// In en, this message translates to:
  /// **'Create game'**
  String get homeScreenNewGameButtonText;

  /// No description provided for @homeScreenBodyUserSportStatsErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve user sport stats!'**
  String get homeScreenBodyUserSportStatsErrorStateTitle;

  /// No description provided for @homeScreenBodyUserGameListingErrorStateTitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve your games!'**
  String get homeScreenBodyUserGameListingErrorStateTitle;

  /// No description provided for @homeScreenBodyUserGameListingEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t joined any games yet!'**
  String get homeScreenBodyUserGameListingEmptyTitle;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFootballAttackLabel.
  ///
  /// In en, this message translates to:
  /// **'ATK'**
  String get homeScreenBodyUserSportStatsStatsFootballAttackLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFootballDefenseLabel.
  ///
  /// In en, this message translates to:
  /// **'DEF'**
  String get homeScreenBodyUserSportStatsStatsFootballDefenseLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFootballStrikingLabel.
  ///
  /// In en, this message translates to:
  /// **'STR'**
  String get homeScreenBodyUserSportStatsStatsFootballStrikingLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFootballSkillsLabel.
  ///
  /// In en, this message translates to:
  /// **'SKL'**
  String get homeScreenBodyUserSportStatsStatsFootballSkillsLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFut7AttackLabel.
  ///
  /// In en, this message translates to:
  /// **'ATK'**
  String get homeScreenBodyUserSportStatsStatsFut7AttackLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFut7DefenseLabel.
  ///
  /// In en, this message translates to:
  /// **'DEF'**
  String get homeScreenBodyUserSportStatsStatsFut7DefenseLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFut7StrikingLabel.
  ///
  /// In en, this message translates to:
  /// **'STR'**
  String get homeScreenBodyUserSportStatsStatsFut7StrikingLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFut7SkillsLabel.
  ///
  /// In en, this message translates to:
  /// **'SKL'**
  String get homeScreenBodyUserSportStatsStatsFut7SkillsLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFutsalAttackLabel.
  ///
  /// In en, this message translates to:
  /// **'ATK'**
  String get homeScreenBodyUserSportStatsStatsFutsalAttackLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFutsalDefenseLabel.
  ///
  /// In en, this message translates to:
  /// **'DEF'**
  String get homeScreenBodyUserSportStatsStatsFutsalDefenseLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFutsalStrikingLabel.
  ///
  /// In en, this message translates to:
  /// **'STR'**
  String get homeScreenBodyUserSportStatsStatsFutsalStrikingLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsFutsalSkillsLabel.
  ///
  /// In en, this message translates to:
  /// **'SKL'**
  String get homeScreenBodyUserSportStatsStatsFutsalSkillsLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsVolleyballAttackLabel.
  ///
  /// In en, this message translates to:
  /// **'ATK'**
  String get homeScreenBodyUserSportStatsStatsVolleyballAttackLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel.
  ///
  /// In en, this message translates to:
  /// **'BLK'**
  String get homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsVolleyballServingLabel.
  ///
  /// In en, this message translates to:
  /// **'SRV'**
  String get homeScreenBodyUserSportStatsStatsVolleyballServingLabel;

  /// No description provided for @homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel.
  ///
  /// In en, this message translates to:
  /// **'REC'**
  String get homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel;

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

  /// No description provided for @gameCreationScreenNameScreenNameInputLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get gameCreationScreenNameScreenNameInputLabel;

  /// No description provided for @gameCreationScreenNameScreenNameInputPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'i.e., Weekly Soccer Game'**
  String get gameCreationScreenNameScreenNameInputPlaceholder;

  /// No description provided for @gameCreationScreenNameScreenNameInputEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty.'**
  String get gameCreationScreenNameScreenNameInputEmptyMessage;

  /// No description provided for @gameCreationScreenNameScreenNameInputLengthMessage.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 3 characters long.'**
  String get gameCreationScreenNameScreenNameInputLengthMessage;

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

  /// No description provided for @gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel;

  /// No description provided for @gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel;

  /// No description provided for @gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Start time cannot be empty.'**
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage;

  /// No description provided for @gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'End time cannot be empty.'**
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage;

  /// No description provided for @gameCreationScreenPriceScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get gameCreationScreenPriceScreenTitle;

  /// No description provided for @gameCreationScreenPriceScreenMemberLabel.
  ///
  /// In en, this message translates to:
  /// **'Member: '**
  String get gameCreationScreenPriceScreenMemberLabel;

  /// No description provided for @gameCreationScreenPriceScreenDropInLabel.
  ///
  /// In en, this message translates to:
  /// **'Drop-in: '**
  String get gameCreationScreenPriceScreenDropInLabel;

  /// No description provided for @gameCreationScreenAgeRangeScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Age Range'**
  String get gameCreationScreenAgeRangeScreenTitle;

  /// No description provided for @gameCreationScreenLocationScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get gameCreationScreenLocationScreenTitle;

  /// No description provided for @gameCreationScreenLocationScreenLocationValidationMessage.
  ///
  /// In en, this message translates to:
  /// **'Please select a location.'**
  String get gameCreationScreenLocationScreenLocationValidationMessage;

  /// No description provided for @gameCreationScreenLocationScreenCurrencyNotificationText.
  ///
  /// In en, this message translates to:
  /// **'{emoji} {locationName} selected, {currencySymbol} will be used as the currency.'**
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  );

  /// No description provided for @gameCreationScreenVisibilityAndImageScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Visibility & Image'**
  String get gameCreationScreenVisibilityAndImageScreenTitle;

  /// No description provided for @gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile Picture'**
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle;

  /// No description provided for @gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Banner'**
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle;

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

  /// No description provided for @gameCreationScreenGameCreationSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Game created successfully!'**
  String get gameCreationScreenGameCreationSuccessMessage;

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
  /// **'Password'**
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

  /// No description provided for @mmAppBarMenuDrawerTitle.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get mmAppBarMenuDrawerTitle;

  /// No description provided for @mmAppBarMenuDrawerCreateGameText.
  ///
  /// In en, this message translates to:
  /// **'Create Game'**
  String get mmAppBarMenuDrawerCreateGameText;

  /// No description provided for @mmAppBarMenuDrawerFriendListingText.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get mmAppBarMenuDrawerFriendListingText;

  /// No description provided for @mmAppBarMenuDrawerInvitationListingText.
  ///
  /// In en, this message translates to:
  /// **'Invitations'**
  String get mmAppBarMenuDrawerInvitationListingText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pl',
    'pt',
    'ru',
    'th',
    'tr',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
