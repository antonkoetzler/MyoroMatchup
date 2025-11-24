// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Không thể kết nối với máy chủ, vui lòng kiểm tra kết nối internet của bạn và thử lại.';

  @override
  String get mmErrorFeedbackSubtitle => 'Vui lòng xác minh kết nối của bạn và thử lại!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Thử lại';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Làm mới';

  @override
  String get mmSuccessFeedbackSubtitle => 'Thao tác hoàn tất thành công!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Hoàn thành';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Địa điểm';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Thành phố';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Bang';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Quốc gia';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Lục địa';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Riêng tư';

  @override
  String get visibilityEnumPublicLabel => 'Công khai';

  @override
  String get frequencyEnumWeeklyLabel => 'Hàng tuần';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Hai tuần một lần';

  @override
  String get frequencyEnumMonthlyLabel => 'Hàng tháng';

  @override
  String get frequencyEnumYearlyLabel => 'Hàng năm';

  @override
  String get sportsEnumFootballLabel => 'Bóng đá';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Bóng chuyền';

  @override
  String get invitationStatusEnumPendingLabel => 'Đang chờ';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Đã chấp nhận';

  @override
  String get invitationStatusEnumRejectedLabel => 'Đã từ chối';

  @override
  String get invitationStatusEnumExpiredLabel => 'Đã hết hạn';

  @override
  String get invitationStatusEnumCancelledLabel => 'Đã hủy';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'Không thể lấy chi tiết trò chơi!';

  @override
  String get invitationListingScreenAppBarTitle => 'Lời mời';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'Không thể lấy lời mời!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Không tìm thấy lời mời!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Tin nhắn';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Trạng thái';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Chấp nhận';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Từ chối';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Thông tin';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Người chơi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Mời người chơi';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Mời người chơi';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Tìm kiếm người dùng...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Tin nhắn';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Hủy';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Gửi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Bảng xếp hạng';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Tần suất';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Ngày Chính';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Thời Gian Chính';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Ngày Hai Tuần Một Lần';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Thời Gian Hai Tuần Một Lần';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Giá Thành Viên';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Giá Khách';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Độ tuổi';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge đến $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Tính hiển thị';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Lỗi khi lấy trò chơi!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Không tìm thấy trò chơi!';

  @override
  String get homeScreenNewGameButtonText => 'Tạo trò chơi';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => 'Không thể lấy thống kê thể thao của người dùng!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'Không thể lấy trò chơi của bạn!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'Bạn chưa tham gia trò chơi nào!';

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
  String get gameCreationScreenAppBarTitle => 'Tạo trò chơi';

  @override
  String get gameCreationScreenNameScreenTitle => 'Tên';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Tên';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'ví dụ: Trận bóng đá hàng tuần';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'Tên không thể để trống.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'Tên phải có ít nhất 3 ký tự.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Môn thể thao';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Tần suất và Ngày/Giờ';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Tần suất';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Bắt đầu';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Kết thúc';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Thời gian bắt đầu không thể để trống.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'Thời gian kết thúc không thể để trống.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Giá';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Thành viên: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Khách: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Độ tuổi';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Vị trí';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Vui lòng chọn một vị trí.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Hiển thị và Hình ảnh';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Ảnh đại diện';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Biểu ngữ';

  @override
  String get gameCreationScreenButtonPreviousText => 'Trước';

  @override
  String get gameCreationScreenButtonNextText => 'Tiếp';

  @override
  String get gameCreationScreenButtonFinishText => 'Hoàn thành';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Trò chơi đã được tạo thành công!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Tên người dùng/email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Mật khẩu';

  @override
  String get loginSignupScreenLoginLoginButton => 'Đăng nhập';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Quên mật khẩu?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Tên';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Tên người dùng';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Mật khẩu';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Mật khẩu';

  @override
  String get loginSignupScreenSignupSignupButton => 'Đăng ký';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'Mới với MyoroMatchup? Đăng ký!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Đã đăng ký? Đăng nhập!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'Tên người dùng/email không thể để trống.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Mật khẩu không thể để trống.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'Tên không thể để trống.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'Tên người dùng không thể để trống.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'Email không thể để trống.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Các trường mật khẩu không thể để trống.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Mật khẩu không khớp.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Tạo trò chơi';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Bạn bè';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Lời mời';
}
