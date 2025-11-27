// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Verbindung zum Server nicht möglich. Bitte überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut.';

  @override
  String get mmErrorFeedbackSubtitle =>
      'Bitte überprüfen Sie Ihre Verbindung und versuchen Sie es erneut!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Wiederholen';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Aktualisieren';

  @override
  String get mmSuccessFeedbackSubtitle => 'Vorgang erfolgreich abgeschlossen!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Fertig';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Ort';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Stadt';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Bundesland';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Land';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Kontinent';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Privat';

  @override
  String get visibilityEnumPublicLabel => 'Öffentlich';

  @override
  String get frequencyEnumWeeklyLabel => 'Wöchentlich';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Zweiwöchentlich';

  @override
  String get frequencyEnumMonthlyLabel => 'Monatlich';

  @override
  String get frequencyEnumYearlyLabel => 'Jährlich';

  @override
  String get sportsEnumFootballLabel => 'Fußball';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Volleyball';

  @override
  String get invitationStatusEnumPendingLabel => 'Ausstehend';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Akzeptiert';

  @override
  String get invitationStatusEnumRejectedLabel => 'Abgelehnt';

  @override
  String get invitationStatusEnumExpiredLabel => 'Abgelaufen';

  @override
  String get invitationStatusEnumCancelledLabel => 'Storniert';

  @override
  String get gameDetailsScreenBodyErrorStateTitle =>
      'Spieldetails konnten nicht abgerufen werden!';

  @override
  String get invitationListingScreenAppBarTitle => 'Einladungen';

  @override
  String get invitationListingScreenBodyErrorStateTitle =>
      'Einladungen konnten nicht abgerufen werden!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle =>
      'Keine Einladungen gefunden!';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =>
      'Nachricht';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Status';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =>
      'Annehmen';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =>
      'Ablehnen';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'Spieler';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText =>
      'Spieler einladen';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText =>
      'Spieler einladen';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  ) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder =>
      'Benutzer suchen...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel =>
      'Nachricht';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =>
      'Abbrechen';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText =>
      'Senden';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Ranglisten';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =>
      'Häufigkeit';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =>
      'Haupttag';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Hauptzeiten';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Zweiwöchentlicher Tag';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Zweiwöchentliche Zeiten';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =>
      'Mitgliedspreis';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =>
      'Gastpreis';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =>
      'Altersspanne';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  ) {
    return '$minAge bis $maxAge';
  }

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =>
      'Sichtbarkeit';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Fehler beim Abrufen der Spiele!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Keine Spiele gefunden!';

  @override
  String get homeScreenNewGameButtonText => 'Spiel erstellen';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle =>
      'Fehler beim Abrufen der Benutzer-Sportstatistiken!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle =>
      'Fehler beim Abrufen Ihrer Spiele!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle =>
      'Sie sind noch keinem Spiel beigetreten!';

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
  String get gameCreationScreenAppBarTitle => 'Spiel erstellen';

  @override
  String get gameCreationScreenNameScreenTitle => 'Name';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Name';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder =>
      'z.B. Wöchentliches Fußballspiel';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'Der Name darf nicht leer sein.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage =>
      'Der Name muss mindestens 3 Zeichen lang sein.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'Häufigkeit & Datum/Uhrzeit';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'Häufigkeit';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'Start';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =>
      'Ende';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Die Startzeit darf nicht leer sein.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'Die Endzeit darf nicht leer sein.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Preis';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Mitglied: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Gast: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Altersspanne';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Standort';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'Bitte wählen Sie einen Standort aus.';

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
      'Sichtbarkeit & Bild';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'Profilbild';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Zurück';

  @override
  String get gameCreationScreenButtonNextText => 'Weiter';

  @override
  String get gameCreationScreenButtonFinishText => 'Fertigstellen';

  @override
  String get gameCreationScreenGameCreationSuccessMessage =>
      'Spiel erfolgreich erstellt!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Benutzername/E-Mail';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Passwort';

  @override
  String get loginSignupScreenLoginLoginButton => 'Anmelden';

  @override
  String get loginSignupScreenLoginForgotPasswordButton =>
      'Passwort vergessen?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Name';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Benutzername';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'E-Mail';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Passwort';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder =>
      'Passwort';

  @override
  String get loginSignupScreenSignupSignupButton => 'Registrieren';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'Neu bei MyoroMatchup? Registrieren!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'Bereits registriert? Anmelden!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Benutzername/E-Mail darf nicht leer sein.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'Passwort darf nicht leer sein.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'Name darf nicht leer sein.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'Benutzername darf nicht leer sein.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'E-Mail darf nicht leer sein.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Passwortfelder dürfen nicht leer sein.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Passwörter stimmen nicht überein.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menü';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Spiel erstellen';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Freunde';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Einladungen';
}
