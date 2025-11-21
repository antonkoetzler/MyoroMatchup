// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage => '无法连接到服务器，请检查您的网络连接后重试。';

  @override
  String get mmErrorFeedbackSubtitle => '请检查您的连接后重试！';

  @override
  String get mmErrorFeedbackActionButtonText => '重试';

  @override
  String get mmSuccessFeedbackSubtitle => '操作成功完成！';

  @override
  String get mmSuccessFeedbackActionButtonText => '完成';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => '地点';

  @override
  String get mmLocationInputTypeEnumCityLabel => '城市';

  @override
  String get mmLocationInputTypeEnumStateLabel => '州/省';

  @override
  String get mmLocationInputTypeEnumCountryLabel => '国家';

  @override
  String get mmLocationInputTypeEnumContinentLabel => '大洲';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => '私密';

  @override
  String get visibilityEnumPublicLabel => '公开';

  @override
  String get frequencyEnumWeeklyLabel => '每周';

  @override
  String get frequencyEnumBiWeeklyLabel => '每两周';

  @override
  String get frequencyEnumMonthlyLabel => '每月';

  @override
  String get frequencyEnumYearlyLabel => '每年';

  @override
  String get sportsEnumFootballLabel => '足球';

  @override
  String get sportsEnumFutsalLabel => '五人制足球';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => '排球';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => '无法获取游戏详情！';

  @override
  String get invitationListingScreenBodyErrorStateTitle => '无法获取邀请！';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '未找到邀请！';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => '信息';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => '玩家';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => '邀请玩家';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => '邀请玩家';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => '搜索用户...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => '消息';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => '取消';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => '发送';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => '排名';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => '频率';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => '主要日期';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => '主要时间';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel => '每两周日期';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel => '每两周时间';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => '会员价格';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => '临时价格';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => '年龄范围';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge 至 $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => '可见性';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '获取游戏时出错！';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '未找到游戏！';

  @override
  String get homeScreenNewGameButtonText => '创建游戏';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => '无法获取用户运动统计数据！';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => '无法获取您的游戏！';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => '您还没有加入任何游戏！';

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
  String get gameCreationScreenAppBarTitle => '创建游戏';

  @override
  String get gameCreationScreenNameScreenTitle => '名称';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '名称';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => '例如：每周足球赛';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => '名称不能为空。';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => '名称必须至少包含3个字符。';

  @override
  String get gameCreationScreenSportScreenTitle => '运动';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => '频率和日期/时间';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => '频率';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => '开始';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => '结束';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage => '开始时间不能为空。';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage => '结束时间不能为空。';

  @override
  String get gameCreationScreenPriceScreenTitle => '价格';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => '会员: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => '临时: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => '年龄范围';

  @override
  String get gameCreationScreenLocationScreenTitle => '位置';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => '请选择一个位置。';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => '可见性和图片';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => '头像';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => '横幅';

  @override
  String get gameCreationScreenButtonPreviousText => '上一步';

  @override
  String get gameCreationScreenButtonNextText => '下一步';

  @override
  String get gameCreationScreenButtonFinishText => '完成';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => '游戏创建成功！';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => '用户名/邮箱';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => '密码';

  @override
  String get loginSignupScreenLoginLoginButton => '登录';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '忘记密码？';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => '姓名';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => '用户名';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => '邮箱';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => '密码';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => '密码';

  @override
  String get loginSignupScreenSignupSignupButton => '注册';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => '新用户？注册！';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => '已有账号？登录！';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => '用户名/邮箱不能为空。';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => '密码不能为空。';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => '姓名不能为空。';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => '用户名不能为空。';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => '邮箱不能为空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => '密码字段不能为空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => '密码不匹配。';

  @override
  String get mmAppBarMenuDrawerTitle => '菜单';

  @override
  String get mmAppBarMenuDrawerCreateGameText => '创建游戏';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get httpClientConnectionExceptionMessage => '無法連接到伺服器，請檢查您的網路連線後重試。';

  @override
  String get mmErrorFeedbackSubtitle => '請檢查您的連線後重試！';

  @override
  String get mmErrorFeedbackActionButtonText => '重試';

  @override
  String get mmSuccessFeedbackSubtitle => '操作成功完成！';

  @override
  String get mmSuccessFeedbackActionButtonText => '完成';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => '地點';

  @override
  String get mmLocationInputTypeEnumCityLabel => '城市';

  @override
  String get mmLocationInputTypeEnumStateLabel => '州/省';

  @override
  String get mmLocationInputTypeEnumCountryLabel => '國家';

  @override
  String get mmLocationInputTypeEnumContinentLabel => '大洲';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => '私密';

  @override
  String get visibilityEnumPublicLabel => '公開';

  @override
  String get frequencyEnumWeeklyLabel => '每週';

  @override
  String get frequencyEnumBiWeeklyLabel => '每兩週';

  @override
  String get frequencyEnumMonthlyLabel => '每月';

  @override
  String get frequencyEnumYearlyLabel => '每年';

  @override
  String get sportsEnumFootballLabel => '足球';

  @override
  String get sportsEnumFutsalLabel => '五人制足球';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => '排球';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => '無法取得遊戲詳情！';

  @override
  String get invitationListingScreenBodyErrorStateTitle => '無法取得邀請！';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '找不到邀請！';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => '資訊';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => '玩家';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => '邀請玩家';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => '邀請玩家';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => '搜尋使用者...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => '訊息';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => '取消';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => '傳送';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => '排名';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => '頻率';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => '主要日期';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => '主要時間';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel => '每兩週日期';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel => '每兩週時間';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => '會員價格';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => '臨時價格';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => '年齡範圍';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge 至 $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => '可見性';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '取得遊戲時發生錯誤！';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '找不到遊戲！';

  @override
  String get homeScreenNewGameButtonText => '建立遊戲';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => '無法取得使用者運動統計資料！';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => '無法取得您的遊戲！';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => '您還沒有加入任何遊戲！';

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
  String get gameCreationScreenAppBarTitle => '建立遊戲';

  @override
  String get gameCreationScreenNameScreenTitle => '名稱';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '名稱';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => '例如：每週足球賽';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => '名稱不能為空。';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => '名稱必須至少包含3個字元。';

  @override
  String get gameCreationScreenSportScreenTitle => '運動';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => '頻率和日期/時間';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => '頻率';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => '開始';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => '結束';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage => '開始時間不能為空。';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage => '結束時間不能為空。';

  @override
  String get gameCreationScreenPriceScreenTitle => '價格';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => '會員: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => '臨時: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => '年齡範圍';

  @override
  String get gameCreationScreenLocationScreenTitle => '位置';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => '請選擇一個位置。';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => '可見性和圖片';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => '頭像';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => '橫幅';

  @override
  String get gameCreationScreenButtonPreviousText => '上一步';

  @override
  String get gameCreationScreenButtonNextText => '下一步';

  @override
  String get gameCreationScreenButtonFinishText => '完成';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => '遊戲建立成功！';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => '使用者名稱/電子郵件';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => '密碼';

  @override
  String get loginSignupScreenLoginLoginButton => '登入';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '忘記密碼？';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => '姓名';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => '使用者名稱';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => '電子郵件';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => '密碼';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => '密碼';

  @override
  String get loginSignupScreenSignupSignupButton => '註冊';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => '新用戶？註冊！';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => '已有帳號？登入！';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => '使用者名稱/電子郵件不能為空。';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => '密碼不能為空。';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => '姓名不能為空。';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => '使用者名稱不能為空。';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => '電子郵件不能為空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => '密碼欄位不能為空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => '密碼不相符。';

  @override
  String get mmAppBarMenuDrawerTitle => '選單';

  @override
  String get mmAppBarMenuDrawerCreateGameText => '建立遊戲';
}
