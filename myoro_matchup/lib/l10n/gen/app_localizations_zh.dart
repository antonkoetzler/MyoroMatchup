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
  String get mmEmptyFeedbackActionButtonText => '刷新';

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
  String get invitationStatusEnumPendingLabel => '待处理';

  @override
  String get invitationStatusEnumAcceptedLabel => '已接受';

  @override
  String get invitationStatusEnumRejectedLabel => '已拒绝';

  @override
  String get invitationStatusEnumExpiredLabel => '已过期';

  @override
  String get invitationStatusEnumCancelledLabel => '已取消';

  @override
  String get friendRequestStatusEnumPendingLabel => '待处理';

  @override
  String get friendRequestStatusEnumAcceptedLabel => '已接受';

  @override
  String get friendRequestStatusEnumRejectedLabel => '已拒绝';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => '无法获取游戏详情！';

  @override
  String get invitationListingScreenAppBarTitle => '邀请';

  @override
  String get friendListingScreenAppBarTitle => '朋友';

  @override
  String get userDetailsScreenAppBarTitle => '用户详情';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': '已订阅', 'other': '未订阅'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': '已订阅', 'other': '未订阅'});
    return '订阅状态: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => '订阅';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => '更改个人资料可见性';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage => '您确定要更改个人资料的可见性吗？';

  @override
  String get userDetailsScreenBodyLocationLabel => '位置';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => '国家';

  @override
  String get userDetailsScreenBodyLocationStateLabel => '州/省';

  @override
  String get userDetailsScreenBodyLocationCityLabel => '城市';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => '编辑位置';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '未找到邀请！';

  @override
  String get friendListingScreenBodyEmptyTitle => '未找到朋友！';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => '消息';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => '状态';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => '接受';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => '状态';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => '拒绝';

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
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => '搜索用户...';

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
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText => 'WhatsApp群聊链接';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText => '使用WhatsApp群聊机器人';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => '使用WhatsApp群聊机器人';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText => '您想为此游戏启用WhatsApp群聊机器人吗？';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage => '使用机器人需要WhatsApp群聊链接。';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty => 'WhatsApp群聊链接是必需的。';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'WhatsApp群聊链接必须采用以下格式: https://chat.whatsapp.com/[代码]。';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => '添加为好友';

  @override
  String get playerDetailsBottomSheetBlockText => '屏蔽';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => '发送好友请求';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage => '您确定要向此用户发送好友请求吗？';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => '接受好友请求';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage => '您确定要接受此好友请求吗？';

  @override
  String get blockUserConfirmationBottomSheetTitle => '屏蔽用户';

  @override
  String get blockUserConfirmationBottomSheetMessage => '您确定要屏蔽此用户吗？';

  @override
  String get unblockUserConfirmationBottomSheetTitle => '取消屏蔽用户';

  @override
  String get unblockUserConfirmationBottomSheetMessage => '您确定要取消屏蔽此用户吗？';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => '删除账户';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage => '您确定要删除您的账户吗？此操作无法撤销。';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '获取游戏时出错！';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '未找到游戏！';

  @override
  String get homeScreenNewGameButtonText => '创建游戏';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText => '编辑个人资料';

  @override
  String get gameCreationScreenAppBarTitle => '创建游戏';

  @override
  String get gameCreationScreenNameScreenTitle => '名称';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '例如：每周足球赛';

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
  String get loginSignupScreenLoginUsernameEmailInputLabel => '用户名/邮箱';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => '密码';

  @override
  String get loginSignupScreenLoginLoginButton => '登录';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '忘记密码？';

  @override
  String get loginSignupScreenSignupNameInputLabel => '姓名';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => '用户名';

  @override
  String get loginSignupScreenSignupEmailInputLabel => '邮箱';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => '密码';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => '密码';

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
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => '国家不能为空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => '密码字段不能为空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => '密码不匹配。';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => '忘记密码';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage => '输入您的电子邮件地址，我们将向您发送重置密码的链接。';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => '电子邮件';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage => '请输入有效的电子邮件地址。';

  @override
  String get mmAppBarMenuDrawerTitle => '菜单';

  @override
  String get mmAppBarMenuDrawerCreateGameText => '创建游戏';

  @override
  String get mmAppBarMenuDrawerFriendListingText => '朋友';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => '邀请';

  @override
  String get mmAppBarMenuDrawerLogoutText => '登出';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get httpClientConnectionExceptionMessage => '無法連接到伺服器，請檢查您的網路連線後重試。';

  @override
  String get mmEmptyFeedbackActionButtonText => '重新整理';

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
  String get invitationStatusEnumPendingLabel => '待處理';

  @override
  String get invitationStatusEnumAcceptedLabel => '已接受';

  @override
  String get invitationStatusEnumRejectedLabel => '已拒絕';

  @override
  String get invitationStatusEnumExpiredLabel => '已過期';

  @override
  String get invitationStatusEnumCancelledLabel => '已取消';

  @override
  String get friendRequestStatusEnumPendingLabel => '待處理';

  @override
  String get friendRequestStatusEnumAcceptedLabel => '已接受';

  @override
  String get friendRequestStatusEnumRejectedLabel => '已拒絕';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => '無法取得遊戲詳情！';

  @override
  String get invitationListingScreenAppBarTitle => '邀請';

  @override
  String get friendListingScreenAppBarTitle => '朋友';

  @override
  String get userDetailsScreenAppBarTitle => '使用者詳情';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': '已訂閱', 'other': '未訂閱'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': '已訂閱', 'other': '未訂閱'});
    return '訂閱狀態: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => '訂閱';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => '更改個人資料可見性';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage => '您確定要更改個人資料的可見性嗎？';

  @override
  String get userDetailsScreenBodyLocationLabel => '位置';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => '國家';

  @override
  String get userDetailsScreenBodyLocationStateLabel => '州/省';

  @override
  String get userDetailsScreenBodyLocationCityLabel => '城市';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => '編輯位置';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '找不到邀請！';

  @override
  String get friendListingScreenBodyEmptyTitle => '找不到朋友！';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => '訊息';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => '狀態';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => '接受';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => '狀態';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => '拒絕';

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
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => '搜尋使用者...';

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
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText => 'WhatsApp群組聊天連結';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText => '使用WhatsApp群組聊天機器人';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => '使用WhatsApp群組聊天機器人';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText => '您想為此遊戲啟用WhatsApp群組聊天機器人嗎？';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage => '使用機器人需要WhatsApp群組聊天連結。';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty => 'WhatsApp群組聊天連結是必需的。';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'WhatsApp群組聊天連結必須採用以下格式: https://chat.whatsapp.com/[代碼]。';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => '新增為好友';

  @override
  String get playerDetailsBottomSheetBlockText => '封鎖';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => '傳送好友請求';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage => '您確定要向此使用者傳送好友請求嗎？';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => '接受好友請求';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage => '您確定要接受此好友請求嗎？';

  @override
  String get blockUserConfirmationBottomSheetTitle => '封鎖使用者';

  @override
  String get blockUserConfirmationBottomSheetMessage => '您確定要封鎖此使用者嗎？';

  @override
  String get unblockUserConfirmationBottomSheetTitle => '解除封鎖使用者';

  @override
  String get unblockUserConfirmationBottomSheetMessage => '您確定要解除封鎖此使用者嗎？';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => '刪除帳戶';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage => '您確定要刪除您的帳戶嗎？此操作無法復原。';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '取得遊戲時發生錯誤！';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '找不到遊戲！';

  @override
  String get homeScreenNewGameButtonText => '建立遊戲';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText => '編輯個人資料';

  @override
  String get gameCreationScreenAppBarTitle => '建立遊戲';

  @override
  String get gameCreationScreenNameScreenTitle => '名稱';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '例如：每週足球賽';

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
  String get loginSignupScreenLoginUsernameEmailInputLabel => '使用者名稱/電子郵件';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => '密碼';

  @override
  String get loginSignupScreenLoginLoginButton => '登入';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '忘記密碼？';

  @override
  String get loginSignupScreenSignupNameInputLabel => '姓名';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => '使用者名稱';

  @override
  String get loginSignupScreenSignupEmailInputLabel => '電子郵件';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => '密碼';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => '密碼';

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
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => '國家不能為空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => '密碼欄位不能為空。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => '密碼不相符。';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => '忘記密碼';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage => '輸入您的電子郵件地址，我們將向您發送重置密碼的連結。';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => '電子郵件';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage => '請輸入有效的電子郵件地址。';

  @override
  String get mmAppBarMenuDrawerTitle => '選單';

  @override
  String get mmAppBarMenuDrawerCreateGameText => '建立遊戲';

  @override
  String get mmAppBarMenuDrawerFriendListingText => '朋友';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => '邀請';

  @override
  String get mmAppBarMenuDrawerLogoutText => '登出';
}
