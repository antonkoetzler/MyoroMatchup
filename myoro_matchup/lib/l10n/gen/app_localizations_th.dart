// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ได้ โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณและลองอีกครั้ง';

  @override
  String get mmErrorFeedbackSubtitle => 'โปรดตรวจสอบการเชื่อมต่อของคุณและลองอีกครั้ง!';

  @override
  String get mmErrorFeedbackActionButtonText => 'ลองอีกครั้ง';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'สถานที่';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'เมือง';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'รัฐ';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'ประเทศ';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'ทวีป';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'ส่วนตัว';

  @override
  String get visibilityEnumPublicLabel => 'สาธารณะ';

  @override
  String get frequencyEnumWeeklyLabel => 'รายสัปดาห์';

  @override
  String get frequencyEnumBiWeeklyLabel => 'ทุกสองสัปดาห์';

  @override
  String get frequencyEnumMonthlyLabel => 'รายเดือน';

  @override
  String get frequencyEnumYearlyLabel => 'รายปี';

  @override
  String get sportsEnumFootballLabel => 'ฟุตบอล';

  @override
  String get sportsEnumFutsalLabel => 'ฟุตซอล';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'วอลเลย์บอล';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'ไม่สามารถดึงรายละเอียดเกมได้!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'ผู้เล่น';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'ผู้เล่น';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'อันดับ';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => 'เกิดข้อผิดพลาดในการดึงเกม!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'ไม่พบเกม!';

  @override
  String get gameListingScreenNewGameButtonText => 'สร้างเกม';

  @override
  String get gameCreationScreenAppBarTitle => 'สร้างเกม';

  @override
  String get gameCreationScreenNameScreenTitle => 'ชื่อ';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'ชื่อ';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'เช่น เกมฟุตบอลรายสัปดาห์';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'ชื่อไม่สามารถว่างได้';

  @override
  String get gameCreationScreenSportScreenTitle => 'กีฬา';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'ความถี่และวันที่/เวลา';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'ความถี่';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'เริ่มต้น';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'สิ้นสุด';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage => 'เวลาเริ่มต้นไม่สามารถว่างได้';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage => 'เวลาสิ้นสุดไม่สามารถว่างได้';

  @override
  String get gameCreationScreenPriceScreenTitle => 'ราคา';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'สมาชิก: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'แขก: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'ช่วงอายุ';

  @override
  String get gameCreationScreenLocationScreenTitle => 'ตำแหน่ง';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'กรุณาเลือกตำแหน่ง';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'การมองเห็นและรูปภาพ';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'รูปโปรไฟล์';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'แบนเนอร์';

  @override
  String get gameCreationScreenButtonPreviousText => 'ก่อนหน้า';

  @override
  String get gameCreationScreenButtonNextText => 'ถัดไป';

  @override
  String get gameCreationScreenButtonFinishText => 'เสร็จสิ้น';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'ชื่อผู้ใช้/อีเมล';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'รหัสผ่าน';

  @override
  String get loginSignupScreenLoginLoginButton => 'เข้าสู่ระบบ';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'ลืมรหัสผ่าน?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'ชื่อ';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'ชื่อผู้ใช้';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'อีเมล';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'รหัสผ่าน';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'รหัสผ่าน';

  @override
  String get loginSignupScreenSignupSignupButton => 'สมัครสมาชิก';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'ใหม่ใน MyoroMatchup? สมัครสมาชิก!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'ลงทะเบียนแล้ว? เข้าสู่ระบบ!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'ชื่อผู้ใช้/อีเมลไม่สามารถว่างได้';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'รหัสผ่านไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'ชื่อไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'ชื่อผู้ใช้ไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'อีเมลไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'ฟิลด์รหัสผ่านไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get mmAppBarMenuDrawerTitle => 'เมนู';

  @override
  String get mmAppBarMenuDrawerUserScreenText => 'หน้าจอผู้ใช้';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'สร้างเกม';
}
