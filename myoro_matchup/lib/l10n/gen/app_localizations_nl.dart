// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Kan niet verbinden met de server, controleer uw internetverbinding en probeer het opnieuw.';

  @override
  String get mmErrorFeedbackSubtitle => 'Controleer uw verbinding en probeer het opnieuw!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Opnieuw proberen';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Vernieuwen';

  @override
  String get mmSuccessFeedbackSubtitle => 'Bewerking succesvol voltooid!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Klaar';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Plaats';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Stad';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Staat';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Land';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continent';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Privé';

  @override
  String get visibilityEnumPublicLabel => 'Openbaar';

  @override
  String get frequencyEnumWeeklyLabel => 'Wekelijks';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Tweewekelijks';

  @override
  String get frequencyEnumMonthlyLabel => 'Maandelijks';

  @override
  String get frequencyEnumYearlyLabel => 'Jaarlijks';

  @override
  String get sportsEnumFootballLabel => 'Voetbal';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Volleybal';

  @override
  String get invitationStatusEnumPendingLabel => 'In afwachting';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Geaccepteerd';

  @override
  String get invitationStatusEnumRejectedLabel => 'Afgewezen';

  @override
  String get invitationStatusEnumExpiredLabel => 'Verlopen';

  @override
  String get invitationStatusEnumCancelledLabel => 'Geannuleerd';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'Kon speldetails niet ophalen!';

  @override
  String get invitationListingScreenAppBarTitle => 'Uitnodigingen';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'Kon uitnodigingen niet ophalen!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Geen uitnodigingen gevonden!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Bericht';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Status';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Accepteren';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Weigeren';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Spelers';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Speler uitnodigen';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Speler uitnodigen';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Zoek gebruikers...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Bericht';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Annuleren';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Verzenden';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Ranglijsten';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Frequentie';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Primaire Dag';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Primaire Tijden';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Tweewekelijkse Dag';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Tweewekelijkse Tijden';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Lidprijs';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Gastprijs';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Leeftijdsbereik';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge tot $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Zichtbaarheid';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Fout bij het ophalen van spellen!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Geen spellen gevonden!';

  @override
  String get homeScreenNewGameButtonText => 'Spel maken';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => 'Kon gebruikerssportstatistieken niet ophalen!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'Kon uw spellen niet ophalen!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'U bent nog niet bij een spel aangesloten!';

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
  String get gameCreationScreenAppBarTitle => 'Spel maken';

  @override
  String get gameCreationScreenNameScreenTitle => 'Naam';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Naam';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'bijv. Wekelijkse voetbalwedstrijd';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'Naam mag niet leeg zijn.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'Naam moet minimaal 3 tekens lang zijn.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Frequentie en Datum/Tijd';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Frequentie';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Start';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Einde';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage => 'Starttijd mag niet leeg zijn.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage => 'Eindtijd mag niet leeg zijn.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Prijs';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Lid: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Gast: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Leeftijdsbereik';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Locatie';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Selecteer alstublieft een locatie.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Zichtbaarheid en Afbeelding';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Profielfoto';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Vorige';

  @override
  String get gameCreationScreenButtonNextText => 'Volgende';

  @override
  String get gameCreationScreenButtonFinishText => 'Voltooien';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Spel succesvol aangemaakt!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Gebruikersnaam/e-mail';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Wachtwoord';

  @override
  String get loginSignupScreenLoginLoginButton => 'Inloggen';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Wachtwoord vergeten?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Naam';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Gebruikersnaam';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'E-mail';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Wachtwoord';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Wachtwoord';

  @override
  String get loginSignupScreenSignupSignupButton => 'Registreren';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'Nieuw bij MyoroMatchup? Registreer!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Al geregistreerd? Log in!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'Gebruikersnaam/e-mail mag niet leeg zijn.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Wachtwoord mag niet leeg zijn.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'Naam mag niet leeg zijn.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'Gebruikersnaam mag niet leeg zijn.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'E-mail mag niet leeg zijn.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Wachtwoordvelden mogen niet leeg zijn.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Wachtwoorden komen niet overeen.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Spel maken';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Vrienden';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Uitnodigingen';
}
