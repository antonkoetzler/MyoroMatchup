// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'सर्वर से कनेक्ट नहीं हो सका, कृपया अपना इंटरनेट जांचें और पुनः प्रयास करें।';

  @override
  String get mmErrorFeedbackSubtitle => 'कृपया अपना कनेक्शन सत्यापित करें और पुनः प्रयास करें!';

  @override
  String get mmErrorFeedbackActionButtonText => 'पुनः प्रयास करें';

  @override
  String get mmSuccessFeedbackSubtitle => 'ऑपरेशन सफलतापूर्वक पूर्ण हुआ!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'पूर्ण';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'स्थान';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'शहर';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'राज्य';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'देश';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'महाद्वीप';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'निजी';

  @override
  String get visibilityEnumPublicLabel => 'सार्वजनिक';

  @override
  String get frequencyEnumWeeklyLabel => 'साप्ताहिक';

  @override
  String get frequencyEnumBiWeeklyLabel => 'द्वि-साप्ताहिक';

  @override
  String get frequencyEnumMonthlyLabel => 'मासिक';

  @override
  String get frequencyEnumYearlyLabel => 'वार्षिक';

  @override
  String get sportsEnumFootballLabel => 'फुटबॉल';

  @override
  String get sportsEnumFutsalLabel => 'फुटसल';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'वॉलीबॉल';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'गेम विवरण प्राप्त करने में विफल!';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'आमंत्रण प्राप्त करने में विफल!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'कोई आमंत्रण नहीं मिला!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'जानकारी';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'खिलाड़ी';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'खिलाड़ी को आमंत्रित करें';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'खिलाड़ी को आमंत्रित करें';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'उपयोगकर्ताओं को खोजें...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'संदेश';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'रद्द करें';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'भेजें';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'रैंकिंग';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'आवृत्ति';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'प्राथमिक दिन';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => 'प्राथमिक समय';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'द्वि-साप्ताहिक दिन';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'द्वि-साप्ताहिक समय';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'सदस्य मूल्य';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'ड्रॉप-इन मूल्य';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'आयु सीमा';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge से $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'दृश्यता';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'गेम प्राप्त करने में त्रुटि!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'कोई गेम नहीं मिला!';

  @override
  String get homeScreenNewGameButtonText => 'गेम बनाएं';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => 'उपयोगकर्ता खेल आंकड़े प्राप्त करने में विफल!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'आपके गेम प्राप्त करने में विफल!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'आपने अभी तक कोई गेम में शामिल नहीं हुए हैं!';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballAttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballDefenseLabel => 'DEF';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballStrikingLabel => 'STR';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballSkillsLabel => 'SKL';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7AttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7DefenseLabel => 'DEF';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7StrikingLabel => 'STR';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7SkillsLabel => 'SKL';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalAttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalDefenseLabel => 'DEF';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalStrikingLabel => 'STR';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalSkillsLabel => 'SKL';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballAttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel => 'BLK';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballServingLabel => 'SRV';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel => 'REC';

  @override
  String get gameCreationScreenAppBarTitle => 'गेम बनाएं';

  @override
  String get gameCreationScreenNameScreenTitle => 'नाम';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'नाम';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'उदाहरण: साप्ताहिक फुटबॉल गेम';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'नाम खाली नहीं हो सकता।';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'नाम कम से कम 3 अक्षर का होना चाहिए।';

  @override
  String get gameCreationScreenSportScreenTitle => 'खेल';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'आवृत्ति और तारीख/समय';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'आवृत्ति';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'शुरुआत';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'समाप्ति';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'शुरुआत का समय खाली नहीं हो सकता।';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'समाप्ति का समय खाली नहीं हो सकता।';

  @override
  String get gameCreationScreenPriceScreenTitle => 'मूल्य';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'सदस्य: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'ड्रॉप-इन: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'आयु सीमा';

  @override
  String get gameCreationScreenLocationScreenTitle => 'स्थान';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'कृपया एक स्थान चुनें।';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'दृश्यता और छवि';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'प्रोफ़ाइल चित्र';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'बैनर';

  @override
  String get gameCreationScreenButtonPreviousText => 'पिछला';

  @override
  String get gameCreationScreenButtonNextText => 'अगला';

  @override
  String get gameCreationScreenButtonFinishText => 'समाप्त करें';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'गेम सफलतापूर्वक बनाया गया!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'उपयोगकर्ता नाम/ईमेल';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'पासवर्ड';

  @override
  String get loginSignupScreenLoginLoginButton => 'लॉगिन';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'पासवर्ड भूल गए?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'नाम';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'उपयोगकर्ता नाम';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'ईमेल';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'पासवर्ड';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'पासवर्ड';

  @override
  String get loginSignupScreenSignupSignupButton => 'साइन अप';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'MyoroMatchup में नए हैं? साइन अप करें!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'पहले से पंजीकृत हैं? लॉगिन करें!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'उपयोगकर्ता नाम/ईमेल खाली नहीं हो सकता।';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'पासवर्ड खाली नहीं हो सकता।';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'नाम खाली नहीं हो सकता।';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'उपयोगकर्ता नाम खाली नहीं हो सकता।';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'ईमेल खाली नहीं हो सकता।';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'पासवर्ड फ़ील्ड खाली नहीं हो सकते।';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'पासवर्ड मेल नहीं खाते।';

  @override
  String get mmAppBarMenuDrawerTitle => 'मेनू';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'गेम बनाएं';
}
