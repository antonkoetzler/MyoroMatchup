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
  String get mmEmptyFeedbackActionButtonText => 'Làm mới';

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
  String get friendRequestStatusEnumPendingLabel => 'Đang chờ';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Đã chấp nhận';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Đã từ chối';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => 'Không thể lấy chi tiết trò chơi!';

  @override
  String get invitationListingScreenAppBarTitle => 'Lời mời';

  @override
  String get friendListingScreenAppBarTitle => 'Bạn bè';

  @override
  String get userDetailsScreenAppBarTitle => 'Chi tiết người dùng';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Đã đăng ký', 'other': 'Chưa đăng ký'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Đã đăng ký', 'other': 'Chưa đăng ký'});
    return 'Trạng thái đăng ký: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Đăng ký';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => 'Thay Đổi Hiển Thị Hồ Sơ';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'Bạn có chắc chắn muốn thay đổi hiển thị hồ sơ của mình không?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Vị trí';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'Quốc gia';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'Tỉnh/Bang';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'Thành phố';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => 'Chỉnh Sửa Vị Trí';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Không tìm thấy lời mời!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'Không tìm thấy bạn bè!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Tin nhắn';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Trạng thái';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Chấp nhận';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => 'Trạng thái';

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
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => 'Tìm kiếm người dùng...';

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
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'Liên kết Nhóm Chat WhatsApp';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'Sử dụng Bot Nhóm Chat WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => 'Sử dụng Bot Nhóm Chat WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      'Bạn có muốn bật bot nhóm chat WhatsApp cho trò chơi này không?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =>
      'Liên kết nhóm WhatsApp là bắt buộc để sử dụng bot.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty => 'Liên kết nhóm chat WhatsApp là bắt buộc.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'Liên kết nhóm chat WhatsApp phải có định dạng: https://chat.whatsapp.com/[mã].';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'Thêm làm Bạn bè';

  @override
  String get playerDetailsBottomSheetBlockText => 'Chặn';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => 'Gửi Lời mời kết bạn';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'Bạn có chắc chắn muốn gửi lời mời kết bạn cho người dùng này không?';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => 'Chấp nhận Lời mời kết bạn';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'Bạn có chắc chắn muốn chấp nhận lời mời kết bạn này không?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'Chặn Người dùng';

  @override
  String get blockUserConfirmationBottomSheetMessage => 'Bạn có chắc chắn muốn chặn người dùng này không?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'Bỏ chặn Người dùng';

  @override
  String get unblockUserConfirmationBottomSheetMessage => 'Bạn có chắc chắn muốn bỏ chặn người dùng này không?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => 'Xóa Tài khoản';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'Bạn có chắc chắn muốn xóa tài khoản của mình không? Hành động này không thể hoàn tác.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Lỗi khi lấy trò chơi!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Không tìm thấy trò chơi!';

  @override
  String get homeScreenNewGameButtonText => 'Tạo trò chơi';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText => 'Chỉnh sửa hồ sơ';

  @override
  String get gameCreationScreenAppBarTitle => 'Tạo trò chơi';

  @override
  String get gameCreationScreenNameScreenTitle => 'Tên';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'ví dụ: Trận bóng đá hàng tuần';

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
  String get loginSignupScreenLoginUsernameEmailInputLabel => 'Tên người dùng/email';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Mật khẩu';

  @override
  String get loginSignupScreenLoginLoginButton => 'Đăng nhập';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Quên mật khẩu?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Tên';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Tên người dùng';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Mật khẩu';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Mật khẩu';

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
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => 'Quốc gia không thể để trống.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Các trường mật khẩu không thể để trống.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Mật khẩu không khớp.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'Quên mật khẩu';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Nhập địa chỉ email của bạn và chúng tôi sẽ gửi cho bạn một liên kết để đặt lại mật khẩu.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Vui lòng nhập địa chỉ email hợp lệ.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Tạo trò chơi';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Bạn bè';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Lời mời';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Đăng xuất';
}
