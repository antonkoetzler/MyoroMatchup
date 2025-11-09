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
  String get mmErrorFeedbackSubtitle =>
      'Verifica la tua connessione e riprova!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Riprova';

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
  String get gameDetailsScreenBodyErrorStateTitle =>
      'Impossibile recuperare i dettagli del gioco!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Giocatori';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'Giocatori';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Classifiche';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle =>
      'Errore nel recupero dei giochi!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle =>
      'Nessun gioco trovato!';

  @override
  String get gameListingScreenNewGameButtonText => 'Crea gioco';

  @override
  String get gameCreationScreenAppBarTitle => 'Crea gioco';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nome';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Nome';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder =>
      'es. Partita di calcio settimanale';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'Il nome non può essere vuoto.';

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
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Nome utente/email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Password';

  @override
  String get loginSignupScreenLoginLoginButton => 'Accedi';

  @override
  String get loginSignupScreenLoginForgotPasswordButton =>
      'Password dimenticata?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Nome';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Nome utente';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Password';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder =>
      'Password';

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
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'I campi password non possono essere vuoti.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Le password non corrispondono.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerUserScreenText => 'Schermata utente';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Crea gioco';
}
