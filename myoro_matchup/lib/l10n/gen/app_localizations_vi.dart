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
  String get gameDetailsScreenBodyErrorStateTitle => 'Không thể lấy chi tiết trò chơi!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Người chơi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Người chơi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Bảng xếp hạng';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => 'Lỗi khi lấy trò chơi!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'Không tìm thấy trò chơi!';

  @override
  String get gameListingScreenNewGameButtonText => 'Tạo trò chơi';

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
  String get mmAppBarMenuDrawerUserScreenText => 'Màn hình người dùng';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Tạo trò chơi';
}
