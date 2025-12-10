// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Impossibile connettersi al server, controlla la tua connessione Internet e riprova.';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Aggiorna';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Luogo';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Città';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Stato';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Paese';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continente';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Privato';

  @override
  String get visibilityEnumPublicLabel => 'Pubblico';

  @override
  String get frequencyEnumWeeklyLabel => 'Settimanale';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Bisettimanale';

  @override
  String get frequencyEnumMonthlyLabel => 'Mensile';

  @override
  String get frequencyEnumYearlyLabel => 'Annuale';

  @override
  String get sportsEnumFootballLabel => 'Calcio';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Pallavolo';

  @override
  String get invitationStatusEnumPendingLabel => 'In attesa';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Accettato';

  @override
  String get invitationStatusEnumRejectedLabel => 'Rifiutato';

  @override
  String get invitationStatusEnumExpiredLabel => 'Scaduto';

  @override
  String get invitationStatusEnumCancelledLabel => 'Annullato';

  @override
  String get friendRequestStatusEnumPendingLabel => 'In attesa';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Accettato';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Rifiutato';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle =>
      'Impossibile recuperare i dettagli del gioco!';

  @override
  String get invitationListingScreenAppBarTitle => 'Inviti';

  @override
  String get friendListingScreenAppBarTitle => 'Amici';

  @override
  String get userDetailsScreenAppBarTitle => 'Dettagli utente';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {
      'true': 'Abbonato',
      'other': 'Non abbonato',
    });
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {
      'true': 'Abbonato',
      'other': 'Non abbonato',
    });
    return 'Stato abbonamento: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Abbonati';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle =>
      'Cambia Visibilità Profilo';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'Sei sicuro di voler cambiare la visibilità del tuo profilo?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Posizione';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'Paese';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'Stato/Provincia';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'Città';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle =>
      'Modifica Posizione';

  @override
  String userLocationResponseDtoFormattedLocation(
    String city,
    String state,
    String country,
  ) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle =>
      'Nessun invito trovato!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'Nessun amico trovato!';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =>
      'Messaggio';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Stato';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =>
      'Accetta';

  @override
  String
  get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Stato';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =>
      'Rifiuta';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'Giocatori';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText =>
      'Invita Giocatore';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText =>
      'Invita Giocatore';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  ) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel =>
      'Cerca utenti...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel =>
      'Messaggio';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =>
      'Annulla';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText =>
      'Invia';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Classifiche';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =>
      'Frequenza';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =>
      'Giorno Principale';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Orari Principali';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Giorno Bisettimanale';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Orari Bisettimanali';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =>
      'Prezzo Membro';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =>
      'Prezzo Ospite';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =>
      'Fascia d\'età';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  ) {
    return '$minAge a $maxAge';
  }

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =>
      'Visibilità';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'Link del Gruppo di Chat WhatsApp';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'Usa Bot di Chat di Gruppo WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle =>
      'Usa Bot di Chat di Gruppo WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      'Vuoi abilitare il bot di chat di gruppo WhatsApp per questo gioco?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =>
      'Il link del gruppo WhatsApp è necessario per utilizzare il bot.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty =>
      'Il link del gruppo di chat WhatsApp è obbligatorio.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'Il link del gruppo di chat WhatsApp deve essere nel formato: https://chat.whatsapp.com/[codice].';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'Aggiungi come Amico';

  @override
  String get playerDetailsBottomSheetBlockText => 'Blocca';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle =>
      'Invia Richiesta di Amicizia';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'Sei sicuro di voler inviare una richiesta di amicizia a questo utente?';

  @override
  String
  get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle =>
      'Accetta Richiesta di Amicizia';

  @override
  String
  get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'Sei sicuro di voler accettare questa richiesta di amicizia?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'Blocca Utente';

  @override
  String get blockUserConfirmationBottomSheetMessage =>
      'Sei sicuro di voler bloccare questo utente?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'Sblocca Utente';

  @override
  String get unblockUserConfirmationBottomSheetMessage =>
      'Sei sicuro di voler sbloccare questo utente?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle =>
      'Elimina Account';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'Sei sicuro di voler eliminare il tuo account? Questa azione non può essere annullata.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Errore nel recupero dei giochi!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Nessun gioco trovato!';

  @override
  String get homeScreenNewGameButtonText => 'Crea gioco';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle =>
      'Non ti sei ancora unito a nessun gioco!';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText =>
      'Modifica profilo';

  @override
  String get gameCreationScreenAppBarTitle => 'Crea gioco';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nome';

  @override
  String get gameCreationScreenNameScreenNameInputLabel =>
      'es. Partita di calcio settimanale';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'Il nome non può essere vuoto.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage =>
      'Il nome deve contenere almeno 3 caratteri.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'Frequenza e Data/Ora';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'Frequenza';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'Inizio';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =>
      'Fine';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'L\'ora di inizio non può essere vuota.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'L\'ora di fine non può essere vuota.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Prezzo';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Membro: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Ospite: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Fascia d\'età';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Posizione';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'Si prega di selezionare una posizione.';

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
      'Visibilità e Immagine';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'Foto del profilo';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Precedente';

  @override
  String get gameCreationScreenButtonNextText => 'Successivo';

  @override
  String get gameCreationScreenButtonFinishText => 'Termina';

  @override
  String get gameCreationScreenGameCreationSuccessMessage =>
      'Gioco creato con successo!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputLabel =>
      'Nome utente/email';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Password';

  @override
  String get loginSignupScreenLoginLoginButton => 'Accedi';

  @override
  String get loginSignupScreenLoginForgotPasswordButton =>
      'Password dimenticata?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Nome';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Nome utente';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Password';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Password';

  @override
  String get loginSignupScreenSignupSignupButton => 'Registrati';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'Nuovo su MyoroMatchup? Registrati!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'Già registrato? Accedi!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Nome utente/email non può essere vuoto.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'La password non può essere vuota.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'Il nome non può essere vuoto.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'Il nome utente non può essere vuoto.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'L\'email non può essere vuota.';

  @override
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage =>
      'Il paese non può essere vuoto.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'I campi password non possono essere vuoti.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Le password non corrispondono.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle =>
      'Password dimenticata';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Inserisci il tuo indirizzo email e ti invieremo un link per reimpostare la password.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'Email';

  @override
  String
  get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Inserisci un indirizzo email valido.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Crea gioco';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Amici';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Inviti';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Esci';
}
