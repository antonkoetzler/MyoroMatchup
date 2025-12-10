// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Не удалось подключиться к серверу, проверьте подключение к интернету и попробуйте снова.';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Обновить';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Место';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Город';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Штат';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Страна';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Континент';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Приватный';

  @override
  String get visibilityEnumPublicLabel => 'Публичный';

  @override
  String get frequencyEnumWeeklyLabel => 'Еженедельно';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Раз в две недели';

  @override
  String get frequencyEnumMonthlyLabel => 'Ежемесячно';

  @override
  String get frequencyEnumYearlyLabel => 'Ежегодно';

  @override
  String get sportsEnumFootballLabel => 'Футбол';

  @override
  String get sportsEnumFutsalLabel => 'Футзал';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Волейбол';

  @override
  String get invitationStatusEnumPendingLabel => 'В ожидании';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Принято';

  @override
  String get invitationStatusEnumRejectedLabel => 'Отклонено';

  @override
  String get invitationStatusEnumExpiredLabel => 'Истекло';

  @override
  String get invitationStatusEnumCancelledLabel => 'Отменено';

  @override
  String get friendRequestStatusEnumPendingLabel => 'В ожидании';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Принято';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Отклонено';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle =>
      'Не удалось получить детали игры!';

  @override
  String get invitationListingScreenAppBarTitle => 'Приглашения';

  @override
  String get friendListingScreenAppBarTitle => 'Друзья';

  @override
  String get userDetailsScreenAppBarTitle => 'Детали пользователя';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {
      'true': 'Подписан',
      'other': 'Не подписан',
    });
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {
      'true': 'Подписан',
      'other': 'Не подписан',
    });
    return 'Статус подписки: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Подписаться';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle =>
      'Изменить Видимость Профиля';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'Вы уверены, что хотите изменить видимость вашего профиля?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Местоположение';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'Страна';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'Штат/Провинция';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'Город';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle =>
      'Изменить Местоположение';

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
      'Приглашения не найдены!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'Друзья не найдены!';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =>
      'Сообщение';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Статус';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =>
      'Принять';

  @override
  String
  get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Статус';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =>
      'Отклонить';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Инфо';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Игроки';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText =>
      'Пригласить игрока';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText =>
      'Пригласить игрока';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  ) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel =>
      'Поиск пользователей...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel =>
      'Сообщение';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =>
      'Отмена';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText =>
      'Отправить';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Рейтинги';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =>
      'Частота';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =>
      'Основной День';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Основное Время';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'День Раз в Две Недели';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Время Раз в Две Недели';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =>
      'Цена для Члена';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =>
      'Цена для Гостя';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =>
      'Возрастной диапазон';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  ) {
    return '$minAge до $maxAge';
  }

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =>
      'Видимость';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'Ссылка на групповой чат WhatsApp';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'Использовать бота группового чата WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle =>
      'Использовать бота группового чата WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      'Вы хотите включить бота группового чата WhatsApp для этой игры?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =>
      'Ссылка на группу WhatsApp необходима для использования бота.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty =>
      'Ссылка на групповой чат WhatsApp обязательна.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'Ссылка на групповой чат WhatsApp должна быть в формате: https://chat.whatsapp.com/[код].';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'Добавить в друзья';

  @override
  String get playerDetailsBottomSheetBlockText => 'Заблокировать';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle =>
      'Отправить запрос на дружбу';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'Вы уверены, что хотите отправить запрос на дружбу этому пользователю?';

  @override
  String
  get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle =>
      'Принять запрос на дружбу';

  @override
  String
  get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'Вы уверены, что хотите принять этот запрос на дружбу?';

  @override
  String get blockUserConfirmationBottomSheetTitle =>
      'Заблокировать пользователя';

  @override
  String get blockUserConfirmationBottomSheetMessage =>
      'Вы уверены, что хотите заблокировать этого пользователя?';

  @override
  String get unblockUserConfirmationBottomSheetTitle =>
      'Разблокировать пользователя';

  @override
  String get unblockUserConfirmationBottomSheetMessage =>
      'Вы уверены, что хотите разблокировать этого пользователя?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle =>
      'Удалить Аккаунт';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'Вы уверены, что хотите удалить свой аккаунт? Это действие нельзя отменить.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Ошибка при получении игр!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Игры не найдены!';

  @override
  String get homeScreenNewGameButtonText => 'Создать игру';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle =>
      'Вы еще не присоединились ни к одной игре!';

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
      'Редактировать профиль';

  @override
  String get gameCreationScreenAppBarTitle => 'Создать игру';

  @override
  String get gameCreationScreenNameScreenTitle => 'Название';

  @override
  String get gameCreationScreenNameScreenNameInputLabel =>
      'например, Еженедельная футбольная игра';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'Название не может быть пустым.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage =>
      'Название должно содержать не менее 3 символов.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Спорт';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'Частота и Дата/Время';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'Частота';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'Начало';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =>
      'Конец';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Время начала не может быть пустым.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'Время окончания не может быть пустым.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Цена';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Участник: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Гость: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Возрастной диапазон';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Местоположение';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'Пожалуйста, выберите местоположение.';

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
      'Видимость и Изображение';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'Фото профиля';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'Баннер';

  @override
  String get gameCreationScreenButtonPreviousText => 'Назад';

  @override
  String get gameCreationScreenButtonNextText => 'Далее';

  @override
  String get gameCreationScreenButtonFinishText => 'Завершить';

  @override
  String get gameCreationScreenGameCreationSuccessMessage =>
      'Игра успешно создана!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputLabel =>
      'Имя пользователя/email';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Пароль';

  @override
  String get loginSignupScreenLoginLoginButton => 'Войти';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Забыли пароль?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Имя';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Имя пользователя';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Пароль';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Пароль';

  @override
  String get loginSignupScreenSignupSignupButton => 'Зарегистрироваться';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'Новичок в MyoroMatchup? Зарегистрируйтесь!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'Уже зарегистрированы? Войдите!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Имя пользователя/email не может быть пустым.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'Пароль не может быть пустым.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'Имя не может быть пустым.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'Имя пользователя не может быть пустым.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'Email не может быть пустым.';

  @override
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage =>
      'Страна не может быть пустой.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Поля пароля не могут быть пустыми.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Пароли не совпадают.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'Забыли пароль';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Введите свой адрес электронной почты, и мы отправим вам ссылку для сброса пароля.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'Email';

  @override
  String
  get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Пожалуйста, введите действительный адрес электронной почты.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Меню';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Создать игру';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Друзья';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Приглашения';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Выйти';
}
