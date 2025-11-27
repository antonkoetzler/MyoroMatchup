// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'サーバーに接続できませんでした。インターネット接続を確認して、もう一度お試しください。';

  @override
  String get mmErrorFeedbackSubtitle => '接続を確認して、もう一度お試しください！';

  @override
  String get mmErrorFeedbackActionButtonText => '再試行';

  @override
  String get mmEmptyFeedbackActionButtonText => '更新';

  @override
  String get mmSuccessFeedbackSubtitle => '操作が正常に完了しました！';

  @override
  String get mmSuccessFeedbackActionButtonText => '完了';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => '場所';

  @override
  String get mmLocationInputTypeEnumCityLabel => '都市';

  @override
  String get mmLocationInputTypeEnumStateLabel => '州';

  @override
  String get mmLocationInputTypeEnumCountryLabel => '国';

  @override
  String get mmLocationInputTypeEnumContinentLabel => '大陸';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => '非公開';

  @override
  String get visibilityEnumPublicLabel => '公開';

  @override
  String get frequencyEnumWeeklyLabel => '週次';

  @override
  String get frequencyEnumBiWeeklyLabel => '隔週';

  @override
  String get frequencyEnumMonthlyLabel => '月次';

  @override
  String get frequencyEnumYearlyLabel => '年次';

  @override
  String get sportsEnumFootballLabel => 'サッカー';

  @override
  String get sportsEnumFutsalLabel => 'フットサル';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'バレーボール';

  @override
  String get invitationStatusEnumPendingLabel => '保留中';

  @override
  String get invitationStatusEnumAcceptedLabel => '承認済み';

  @override
  String get invitationStatusEnumRejectedLabel => '拒否済み';

  @override
  String get invitationStatusEnumExpiredLabel => '期限切れ';

  @override
  String get invitationStatusEnumCancelledLabel => 'キャンセル済み';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'ゲームの詳細を取得できませんでした！';

  @override
  String get invitationListingScreenAppBarTitle => '招待';

  @override
  String get invitationListingScreenBodyErrorStateTitle => '招待を取得できませんでした！';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle =>
      '招待が見つかりませんでした！';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =>
      'メッセージ';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =>
      'ステータス';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =>
      '承諾';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =>
      '辞退';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => '情報';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'プレイヤー';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText =>
      'プレイヤーを招待';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'プレイヤーを招待';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  ) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder =>
      'ユーザーを検索...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'メッセージ';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =>
      'キャンセル';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => '送信';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'ランキング';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =>
      '頻度';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =>
      '主要日';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      '主要時間';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      '隔週日';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      '隔週時間';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =>
      'メンバー価格';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =>
      'ドロップイン価格';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =>
      '年齢範囲';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  ) {
    return '$minAgeから$maxAgeまで';
  }

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =>
      '公開設定';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'ゲームの取得中にエラーが発生しました！';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'ゲームが見つかりませんでした！';

  @override
  String get homeScreenNewGameButtonText => 'ゲームを作成';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle =>
      'ユーザーのスポーツ統計を取得できませんでした！';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle =>
      'あなたのゲームを取得できませんでした！';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'まだどのゲームにも参加していません！';

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
  String get gameCreationScreenAppBarTitle => 'ゲームを作成';

  @override
  String get gameCreationScreenNameScreenTitle => '名前';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => '名前';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => '例：週次サッカーゲーム';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => '名前は空にできません。';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage =>
      '名前は少なくとも3文字である必要があります。';

  @override
  String get gameCreationScreenSportScreenTitle => 'スポーツ';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => '頻度と日時';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      '頻度';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      '開始';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => '終了';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      '開始時刻は空にできません。';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      '終了時刻は空にできません。';

  @override
  String get gameCreationScreenPriceScreenTitle => '価格';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'メンバー: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'ドロップイン: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => '年齢範囲';

  @override
  String get gameCreationScreenLocationScreenTitle => '場所';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      '場所を選択してください。';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => '公開設定と画像';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'プロフィール写真';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'バナー';

  @override
  String get gameCreationScreenButtonPreviousText => '前へ';

  @override
  String get gameCreationScreenButtonNextText => '次へ';

  @override
  String get gameCreationScreenButtonFinishText => '完了';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'ゲームが正常に作成されました！';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'ユーザー名/メールアドレス';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'パスワード';

  @override
  String get loginSignupScreenLoginLoginButton => 'ログイン';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'パスワードをお忘れですか？';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => '名前';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'ユーザー名';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'メールアドレス';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'パスワード';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'パスワード';

  @override
  String get loginSignupScreenSignupSignupButton => '登録';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'MyoroMatchupが初めてですか？登録してください！';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      '既に登録済みですか？ログインしてください！';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'ユーザー名/メールアドレスは空にできません。';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'パスワードは空にできません。';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => '名前は空にできません。';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'ユーザー名は空にできません。';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'メールアドレスは空にできません。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'パスワードフィールドは空にできません。';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'パスワードが一致しません。';

  @override
  String get mmAppBarMenuDrawerTitle => 'メニュー';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'ゲームを作成';

  @override
  String get mmAppBarMenuDrawerFriendListingText => '友達';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => '招待';
}
