// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage => '서버에 연결할 수 없습니다. 인터넷 연결을 확인하고 다시 시도하세요.';

  @override
  String get mmEmptyFeedbackActionButtonText => '새로고침';

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
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
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
  String get invitationStatusEnumPendingLabel => '대기 중';

  @override
  String get invitationStatusEnumAcceptedLabel => '수락됨';

  @override
  String get invitationStatusEnumRejectedLabel => '거부됨';

  @override
  String get invitationStatusEnumExpiredLabel => '만료됨';

  @override
  String get invitationStatusEnumCancelledLabel => '취소됨';

  @override
  String get friendRequestStatusEnumPendingLabel => '대기 중';

  @override
  String get friendRequestStatusEnumAcceptedLabel => '수락됨';

  @override
  String get friendRequestStatusEnumRejectedLabel => '거부됨';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => '게임 세부 정보를 가져오지 못했습니다!';

  @override
  String get invitationListingScreenAppBarTitle => '초대';

  @override
  String get friendListingScreenAppBarTitle => '친구';

  @override
  String get userDetailsScreenAppBarTitle => '사용자 세부 정보';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': '구독 중', 'other': '구독 안 함'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': '구독 중', 'other': '구독 안 함'});
    return '구독 상태: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => '구독하기';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => '프로필 공개 설정 변경';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage => '프로필 공개 설정을 변경하시겠습니까?';

  @override
  String get userDetailsScreenBodyLocationLabel => '위치';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => '국가';

  @override
  String get userDetailsScreenBodyLocationStateLabel => '주/도';

  @override
  String get userDetailsScreenBodyLocationCityLabel => '도시';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => '위치 편집';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '초대를 찾을 수 없습니다!';

  @override
  String get friendListingScreenBodyEmptyTitle => '친구를 찾을 수 없습니다!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => '메시지';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => '상태';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => '수락';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => '상태';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => '거절';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => '정보';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => '플레이어';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => '플레이어 초대';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => '플레이어 초대';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => '사용자 검색...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => '메시지';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => '취소';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => '보내기';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => '순위';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => '빈도';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => '주요 일';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => '주요 시간';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel => '격주 일';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel => '격주 시간';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => '회원 가격';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => '드롭인 가격';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => '연령 범위';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge세부터 $maxAge세까지';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => '공개 설정';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText => 'WhatsApp 그룹 채팅 링크';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText => 'WhatsApp 그룹 채팅 봇 사용';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => 'WhatsApp 그룹 채팅 봇 사용';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText => '이 게임에 WhatsApp 그룹 채팅 봇을 활성화하시겠습니까?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage => '봇을 사용하려면 WhatsApp 그룹 링크가 필요합니다.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty => 'WhatsApp 그룹 채팅 링크는 필수입니다.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'WhatsApp 그룹 채팅 링크는 다음 형식이어야 합니다: https://chat.whatsapp.com/[코드]。';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => '친구로 추가';

  @override
  String get playerDetailsBottomSheetBlockText => '차단';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => '친구 요청 보내기';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage => '이 사용자에게 친구 요청을 보내시겠습니까?';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => '친구 요청 수락';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage => '이 친구 요청을 수락하시겠습니까?';

  @override
  String get blockUserConfirmationBottomSheetTitle => '사용자 차단';

  @override
  String get blockUserConfirmationBottomSheetMessage => '이 사용자를 차단하시겠습니까?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => '사용자 차단 해제';

  @override
  String get unblockUserConfirmationBottomSheetMessage => '이 사용자의 차단을 해제하시겠습니까?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => '계정 삭제';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage => '계정을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '게임을 가져오는 중 오류가 발생했습니다!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '게임을 찾을 수 없습니다!';

  @override
  String get homeScreenNewGameButtonText => '게임 만들기';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => '아직 어떤 게임에도 참여하지 않았습니다!';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText => 'Edit profile';

  @override
  String get gameCreationScreenAppBarTitle => '게임 만들기';

  @override
  String get gameCreationScreenNameScreenTitle => '이름';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '예: 주간 축구 게임';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => '이름은 비어 있을 수 없습니다.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => '이름은 최소 3자 이상이어야 합니다.';

  @override
  String get gameCreationScreenSportScreenTitle => '스포츠';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => '빈도 및 날짜/시간';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => '빈도';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => '시작';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => '종료';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage => '시작 시간은 비어 있을 수 없습니다.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage => '종료 시간은 비어 있을 수 없습니다.';

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
  String get gameCreationScreenLocationScreenLocationValidationMessage => '위치를 선택해주세요.';

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
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => '프로필 사진';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => '배너';

  @override
  String get gameCreationScreenButtonPreviousText => '이전';

  @override
  String get gameCreationScreenButtonNextText => '다음';

  @override
  String get gameCreationScreenButtonFinishText => '완료';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => '게임이 성공적으로 생성되었습니다!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputLabel => '사용자 이름/이메일';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => '비밀번호';

  @override
  String get loginSignupScreenLoginLoginButton => '로그인';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '비밀번호를 잊으셨나요?';

  @override
  String get loginSignupScreenSignupNameInputLabel => '이름';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => '사용자 이름';

  @override
  String get loginSignupScreenSignupEmailInputLabel => '이메일';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => '비밀번호';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => '비밀번호';

  @override
  String get loginSignupScreenSignupSignupButton => '가입';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'MyoroMatchup이 처음이신가요? 가입하세요!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => '이미 가입하셨나요? 로그인하세요!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => '사용자 이름/이메일은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => '비밀번호는 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => '이름은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => '사용자 이름은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => '이메일은 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => '국가는 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => '비밀번호 필드는 비어 있을 수 없습니다.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => '비밀번호가 일치하지 않습니다.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => '비밀번호 찾기';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage => '이메일 주소를 입력하시면 비밀번호를 재설정할 수 있는 링크를 보내드립니다.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => '이메일';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage => '유효한 이메일 주소를 입력해주세요.';

  @override
  String get mmAppBarMenuDrawerTitle => '메뉴';

  @override
  String get mmAppBarMenuDrawerCreateGameText => '게임 만들기';

  @override
  String get mmAppBarMenuDrawerFriendListingText => '친구';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => '초대';

  @override
  String get mmAppBarMenuDrawerLogoutText => '로그아웃';
}
