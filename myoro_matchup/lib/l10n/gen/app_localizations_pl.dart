// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Nie można połączyć się z serwerem, sprawdź połączenie internetowe i spróbuj ponownie.';

  @override
  String get mmErrorFeedbackSubtitle => 'Sprawdź połączenie i spróbuj ponownie!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Spróbuj ponownie';

  @override
  String get mmSuccessFeedbackSubtitle => 'Operacja zakończona pomyślnie!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Gotowe';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Miejsce';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Miasto';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Województwo';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Kraj';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Kontynent';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Prywatny';

  @override
  String get visibilityEnumPublicLabel => 'Publiczny';

  @override
  String get frequencyEnumWeeklyLabel => 'Tygodniowo';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Co dwa tygodnie';

  @override
  String get frequencyEnumMonthlyLabel => 'Miesięcznie';

  @override
  String get frequencyEnumYearlyLabel => 'Rocznie';

  @override
  String get sportsEnumFootballLabel => 'Piłka nożna';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Siatkówka';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'Nie udało się pobrać szczegółów gry!';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'Nie udało się pobrać zaproszeń!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Nie znaleziono zaproszeń!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Gracze';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Zaproś gracza';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Zaproś gracza';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Szukaj użytkowników...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Wiadomość';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Anuluj';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Wyślij';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Rankingi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Częstotliwość';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Główny Dzień';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => 'Główne Czasy';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Dzień Co Dwa Tygodnie';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Czasy Co Dwa Tygodnie';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Cena Członkowska';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Cena Gościa';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Zakres wiekowy';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge do $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Widoczność';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Błąd podczas pobierania gier!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Nie znaleziono gier!';

  @override
  String get homeScreenNewGameButtonText => 'Utwórz grę';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => 'Nie udało się pobrać statystyk sportowych użytkownika!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'Nie udało się pobrać Twoich gier!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'Nie dołączyłeś jeszcze do żadnej gry!';

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
  String get gameCreationScreenAppBarTitle => 'Utwórz grę';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nazwa';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Nazwa';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'np. Tygodniowa gra w piłkę nożną';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'Nazwa nie może być pusta.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'Nazwa musi mieć co najmniej 3 znaki.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Częstotliwość i Data/Godzina';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Częstotliwość';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Start';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Koniec';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Godzina rozpoczęcia nie może być pusta.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'Godzina zakończenia nie może być pusta.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Cena';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Członek: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Gość: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Zakres wiekowy';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Lokalizacja';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Proszę wybrać lokalizację.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Widoczność i Obraz';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Zdjęcie profilowe';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Baner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Wstecz';

  @override
  String get gameCreationScreenButtonNextText => 'Dalej';

  @override
  String get gameCreationScreenButtonFinishText => 'Zakończ';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Gra została pomyślnie utworzona!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Nazwa użytkownika/e-mail';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Hasło';

  @override
  String get loginSignupScreenLoginLoginButton => 'Zaloguj się';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Zapomniałeś hasła?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Imię';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Nazwa użytkownika';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'E-mail';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Hasło';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Hasło';

  @override
  String get loginSignupScreenSignupSignupButton => 'Zarejestruj się';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'Nowy w MyoroMatchup? Zarejestruj się!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Już zarejestrowany? Zaloguj się!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'Nazwa użytkownika/e-mail nie może być pusta.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Hasło nie może być puste.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'Imię nie może być puste.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'Nazwa użytkownika nie może być pusta.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'E-mail nie może być pusty.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Pola hasła nie mogą być puste.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Hasła nie pasują do siebie.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Utwórz grę';
}
