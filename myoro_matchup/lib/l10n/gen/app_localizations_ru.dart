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
  String get mmErrorFeedbackSubtitle =>
      'Пожалуйста, проверьте ваше подключение и попробуйте снова!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Повторить';

  @override
  String get mmSuccessFeedbackSubtitle => 'Операция успешно завершена!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Готово';

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
  String get gameDetailsScreenBodyErrorStateTitle =>
      'Не удалось получить детали игры!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Игроки';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Игроки';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Рейтинги';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle =>
      'Ошибка при получении игр!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'Игры не найдены!';

  @override
  String get gameListingScreenNewGameButtonText => 'Создать игру';

  @override
  String get gameCreationScreenAppBarTitle => 'Создать игру';

  @override
  String get gameCreationScreenNameScreenTitle => 'Название';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Название';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder =>
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
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Имя пользователя/email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Пароль';

  @override
  String get loginSignupScreenLoginLoginButton => 'Войти';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Забыли пароль?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Имя';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder =>
      'Имя пользователя';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Пароль';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Пароль';

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
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Поля пароля не могут быть пустыми.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Пароли не совпадают.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Меню';

  @override
  String get mmAppBarMenuDrawerUserScreenText => 'Экран пользователя';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Создать игру';
}
