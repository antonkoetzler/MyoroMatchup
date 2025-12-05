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
  String get mmEmptyFeedbackActionButtonText => 'รีเฟรช';

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
  String get invitationStatusEnumPendingLabel => 'รอดำเนินการ';

  @override
  String get invitationStatusEnumAcceptedLabel => 'ยอมรับแล้ว';

  @override
  String get invitationStatusEnumRejectedLabel => 'ปฏิเสธแล้ว';

  @override
  String get invitationStatusEnumExpiredLabel => 'หมดอายุ';

  @override
  String get invitationStatusEnumCancelledLabel => 'ยกเลิกแล้ว';

  @override
  String get friendRequestStatusEnumPendingLabel => 'รอดำเนินการ';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'ยอมรับแล้ว';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'ปฏิเสธแล้ว';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => 'ไม่สามารถดึงรายละเอียดเกมได้!';

  @override
  String get invitationListingScreenAppBarTitle => 'คำเชิญ';

  @override
  String get friendListingScreenAppBarTitle => 'เพื่อน';

  @override
  String get userDetailsScreenAppBarTitle => 'รายละเอียดผู้ใช้';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'สมัครสมาชิกแล้ว', 'other': 'ยังไม่ได้สมัครสมาชิก'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'สมัครสมาชิกแล้ว', 'other': 'ยังไม่ได้สมัครสมาชิก'});
    return 'สถานะการสมัครสมาชิก: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'สมัครสมาชิก';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => 'เปลี่ยนการมองเห็นโปรไฟล์';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'คุณแน่ใจหรือไม่ว่าต้องการเปลี่ยนการมองเห็นโปรไฟล์ของคุณ?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'ตำแหน่ง';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'ประเทศ';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'รัฐ/จังหวัด';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'เมือง';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => 'แก้ไขตำแหน่ง';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'ไม่พบคำเชิญ!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'ไม่พบเพื่อน!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'ข้อความ';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'สถานะ';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'ยอมรับ';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => 'สถานะ';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'ปฏิเสธ';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'ข้อมูล';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'ผู้เล่น';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'เชิญผู้เล่น';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'เชิญผู้เล่น';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => 'ค้นหาผู้ใช้...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'ข้อความ';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'ยกเลิก';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'ส่ง';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'อันดับ';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'ความถี่';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'วันหลัก';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => 'เวลาหลัก';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'วันทุกสองสัปดาห์';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'เวลาทุกสองสัปดาห์';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'ราคาสมาชิก';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'ราคาแขก';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'ช่วงอายุ';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge ถึง $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'การมองเห็น';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'ลิงก์แชทกลุ่ม WhatsApp';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'ใช้บอทแชทกลุ่ม WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => 'ใช้บอทแชทกลุ่ม WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      'คุณต้องการเปิดใช้งานบอทแชทกลุ่ม WhatsApp สำหรับเกมนี้หรือไม่?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage => 'ลิงก์กลุ่ม WhatsApp จำเป็นต้องใช้บอท';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty => 'ลิงก์แชทกลุ่ม WhatsApp จำเป็นต้องระบุ';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'ลิงก์แชทกลุ่ม WhatsApp ต้องอยู่ในรูปแบบ: https://chat.whatsapp.com/[รหัส]';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'เพิ่มเป็นเพื่อน';

  @override
  String get playerDetailsBottomSheetBlockText => 'บล็อก';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => 'ส่งคำขอเป็นเพื่อน';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'คุณแน่ใจหรือไม่ว่าต้องการส่งคำขอเป็นเพื่อนไปยังผู้ใช้รายนี้?';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => 'ยอมรับคำขอเป็นเพื่อน';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'คุณแน่ใจหรือไม่ว่าต้องการยอมรับคำขอเป็นเพื่อนนี้?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'บล็อกผู้ใช้';

  @override
  String get blockUserConfirmationBottomSheetMessage => 'คุณแน่ใจหรือไม่ว่าต้องการบล็อกผู้ใช้รายนี้?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'ยกเลิกการบล็อกผู้ใช้';

  @override
  String get unblockUserConfirmationBottomSheetMessage => 'คุณแน่ใจหรือไม่ว่าต้องการยกเลิกการบล็อกผู้ใช้รายนี้?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => 'ลบบัญชี';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'คุณแน่ใจหรือไม่ว่าต้องการลบบัญชีของคุณ? การกระทำนี้ไม่สามารถยกเลิกได้';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'เกิดข้อผิดพลาดในการดึงเกม!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'ไม่พบเกม!';

  @override
  String get homeScreenNewGameButtonText => 'สร้างเกม';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'คุณยังไม่ได้เข้าร่วมเกมใดเลย!';

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
  String get gameCreationScreenAppBarTitle => 'สร้างเกม';

  @override
  String get gameCreationScreenNameScreenTitle => 'ชื่อ';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'เช่น เกมฟุตบอลรายสัปดาห์';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'ชื่อไม่สามารถว่างได้';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'ชื่อต้องมีอย่างน้อย 3 ตัวอักษร';

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
  String get gameCreationScreenGameCreationSuccessMessage => 'สร้างเกมสำเร็จแล้ว!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputLabel => 'ชื่อผู้ใช้/อีเมล';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'รหัสผ่าน';

  @override
  String get loginSignupScreenLoginLoginButton => 'เข้าสู่ระบบ';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'ลืมรหัสผ่าน?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'ชื่อ';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'ชื่อผู้ใช้';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'อีเมล';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'รหัสผ่าน';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'รหัสผ่าน';

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
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => 'ประเทศไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'ฟิลด์รหัสผ่านไม่สามารถว่างได้';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'ลืมรหัสผ่าน';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage => 'ใส่อีเมลของคุณแล้วเราจะส่งลิงก์เพื่อรีเซ็ตรหัสผ่านให้คุณ';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'อีเมล';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage => 'กรุณาใส่อีเมลที่ถูกต้อง';

  @override
  String get mmAppBarMenuDrawerTitle => 'เมนู';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'สร้างเกม';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'เพื่อน';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'คำเชิญ';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'ออกจากระบบ';
}
