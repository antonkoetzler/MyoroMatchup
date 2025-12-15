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
  String get mmEmptyFeedbackActionButtonText => 'Odśwież';

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
  String get invitationStatusEnumPendingLabel => 'Oczekujące';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Zaakceptowane';

  @override
  String get invitationStatusEnumRejectedLabel => 'Odrzucone';

  @override
  String get invitationStatusEnumExpiredLabel => 'Wygasłe';

  @override
  String get invitationStatusEnumCancelledLabel => 'Anulowane';

  @override
  String get friendRequestStatusEnumPendingLabel => 'Oczekujące';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Zaakceptowane';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Odrzucone';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => 'Nie udało się pobrać szczegółów gry!';

  @override
  String get invitationListingScreenAppBarTitle => 'Zaproszenia';

  @override
  String get friendListingScreenAppBarTitle => 'Przyjaciele';

  @override
  String get userDetailsScreenAppBarTitle => 'Szczegóły użytkownika';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Subskrybowane', 'other': 'Niesubskrybowane'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Subskrybowane', 'other': 'Niesubskrybowane'});
    return 'Status subskrypcji: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Subskrybuj';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => 'Zmień Widoczność Profilu';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'Czy na pewno chcesz zmienić widoczność swojego profilu?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Lokalizacja';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'Kraj';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'Województwo/Prowincja';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'Miasto';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => 'Edytuj Lokalizację';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Nie znaleziono zaproszeń!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'Nie znaleziono przyjaciół!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Wiadomość';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Status';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Akceptuj';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => 'Status';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Odrzuć';

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
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => 'Szukaj użytkowników...';

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
  String get playerDetailsBottomSheetAddAsFriendText => 'Dodaj jako przyjaciela';

  @override
  String get playerDetailsBottomSheetBlockText => 'Zablokuj';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => 'Wyślij prośbę o przyjaźń';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'Czy na pewno chcesz wysłać prośbę o przyjaźń do tego użytkownika?';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => 'Zaakceptuj prośbę o przyjaźń';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'Czy na pewno chcesz zaakceptować tę prośbę o przyjaźń?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'Zablokuj użytkownika';

  @override
  String get blockUserConfirmationBottomSheetMessage => 'Czy na pewno chcesz zablokować tego użytkownika?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'Odblokuj użytkownika';

  @override
  String get unblockUserConfirmationBottomSheetMessage => 'Czy na pewno chcesz odblokować tego użytkownika?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => 'Usuń Konto';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'Czy na pewno chcesz usunąć swoje konto? Tej akcji nie można cofnąć.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Błąd podczas pobierania gier!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Nie znaleziono gier!';

  @override
  String get homeScreenNewGameButtonText => 'Utwórz grę';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText => 'Edytuj profil';

  @override
  String get gameCreationScreenAppBarTitle => 'Utwórz grę';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nazwa';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'np. Tygodniowa gra w piłkę nożną';

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
  String get loginSignupScreenLoginUsernameEmailInputLabel => 'Nazwa użytkownika/e-mail';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Hasło';

  @override
  String get loginSignupScreenLoginLoginButton => 'Zaloguj się';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Zapomniałeś hasła?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Imię';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Nazwa użytkownika';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'E-mail';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Hasło';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Hasło';

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
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => 'Kraj nie może być pusty.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Pola hasła nie mogą być puste.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Hasła nie pasują do siebie.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'Zapomniałem hasła';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Wprowadź swój adres e-mail, a wyślemy Ci link do resetowania hasła.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'E-mail';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Proszę wprowadzić prawidłowy adres e-mail.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Utwórz grę';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Przyjaciele';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Zaproszenia';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Wyloguj';
}
