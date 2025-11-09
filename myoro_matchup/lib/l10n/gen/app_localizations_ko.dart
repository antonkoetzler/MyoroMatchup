// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      '서버에 연결할 수 없습니다. 인터넷 연결을 확인하고 다시 시도하세요.';

  @override
  String get mmErrorFeedbackSubtitle => '연결을 확인하고 다시 시도하세요!';

  @override
  String get mmErrorFeedbackActionButtonText => '다시 시도';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => '장소';

  @override
  String get mmLocationInputTypeEnumCityLabel => '도시';

  @override
  String get mmLocationInputTypeEnumStateLabel => '주';

  @override
  String get mmLocationInputTypeEnumCountryLabel => '국가';

  @override
  String get mmLocationInputTypeEnumContinentLabel => '대륙';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => '비공개';

  @override
  String get visibilityEnumPublicLabel => '공개';

  @override
  String get frequencyEnumWeeklyLabel => '주간';

  @override
  String get frequencyEnumBiWeeklyLabel => '격주';

  @override
  String get frequencyEnumMonthlyLabel => '월간';

  @override
  String get frequencyEnumYearlyLabel => '연간';

  @override
  String get sportsEnumFootballLabel => '축구';

  @override
  String get sportsEnumFutsalLabel => '풋살';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => '배구';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => '게임 세부 정보를 가져오지 못했습니다!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => '플레이어';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => '플레이어';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => '순위';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => '게임을 가져오는 중 오류가 발생했습니다!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => '게임을 찾을 수 없습니다!';

  @override
  String get gameListingScreenNewGameButtonText => '게임 만들기';

  @override
  String get gameCreationScreenAppBarTitle => '게임 만들기';

  @override
  String get gameCreationScreenNameScreenTitle => '이름';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '이름';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => '예: 주간 축구 게임';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      '이름은 비어 있을 수 없습니다.';

  @override
  String get gameCreationScreenSportScreenTitle => '스포츠';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => '빈도 및 날짜/시간';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      '빈도';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      '시작';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => '종료';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      '시작 시간은 비어 있을 수 없습니다.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      '종료 시간은 비어 있을 수 없습니다.';

  @override
  String get gameCreationScreenPriceScreenTitle => '가격';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => '회원: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => '드롭인: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => '연령 범위';

  @override
  String get gameCreationScreenLocationScreenTitle => '위치';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      '위치를 선택해주세요.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => '공개 설정 및 이미지';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      '프로필 사진';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      '배너';

  @override
  String get gameCreationScreenButtonPreviousText => '이전';

  @override
  String get gameCreationScreenButtonNextText => '다음';

  @override
  String get gameCreationScreenButtonFinishText => '완료';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      '사용자 이름/이메일';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => '비밀번호';

  @override
  String get loginSignupScreenLoginLoginButton => '로그인';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '비밀번호를 잊으셨나요?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => '이름';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => '사용자 이름';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => '이메일';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => '비밀번호';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => '비밀번호';

  @override
  String get loginSignupScreenSignupSignupButton => '가입';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'MyoroMatchup이 처음이신가요? 가입하세요!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      '이미 가입하셨나요? 로그인하세요!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      '사용자 이름/이메일은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      '비밀번호는 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      '이름은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      '사용자 이름은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      '이메일은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      '비밀번호 필드는 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      '비밀번호가 일치하지 않습니다.';

  @override
  String get mmAppBarMenuDrawerTitle => '메뉴';

  @override
  String get mmAppBarMenuDrawerUserScreenText => '사용자 화면';

  @override
  String get mmAppBarMenuDrawerCreateGameText => '게임 만들기';
}
