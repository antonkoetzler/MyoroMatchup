// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Sunucuya bağlanılamadı, lütfen internet bağlantınızı kontrol edin ve tekrar deneyin.';

  @override
  String get mmErrorFeedbackSubtitle => 'Lütfen bağlantınızı doğrulayın ve tekrar deneyin!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Yeniden Dene';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Yenile';

  @override
  String get mmSuccessFeedbackSubtitle => 'İşlem başarıyla tamamlandı!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Tamamlandı';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Yer';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Şehir';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Eyalet';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Ülke';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Kıta';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Özel';

  @override
  String get visibilityEnumPublicLabel => 'Herkese Açık';

  @override
  String get frequencyEnumWeeklyLabel => 'Haftalık';

  @override
  String get frequencyEnumBiWeeklyLabel => 'İki Haftada Bir';

  @override
  String get frequencyEnumMonthlyLabel => 'Aylık';

  @override
  String get frequencyEnumYearlyLabel => 'Yıllık';

  @override
  String get sportsEnumFootballLabel => 'Futbol';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Voleybol';

  @override
  String get invitationStatusEnumPendingLabel => 'Beklemede';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Kabul Edildi';

  @override
  String get invitationStatusEnumRejectedLabel => 'Reddedildi';

  @override
  String get invitationStatusEnumExpiredLabel => 'Süresi Doldu';

  @override
  String get invitationStatusEnumCancelledLabel => 'İptal Edildi';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'Oyun detayları alınamadı!';

  @override
  String get invitationListingScreenAppBarTitle => 'Davetler';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'Davetiyeler alınamadı!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Davetiye bulunamadı!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Mesaj';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Durum';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Kabul Et';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Reddet';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Bilgi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Oyuncular';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Oyuncu Davet Et';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Oyuncu Davet Et';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Kullanıcı ara...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Mesaj';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'İptal';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Gönder';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Sıralamalar';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Sıklık';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Ana Gün';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => 'Ana Zamanlar';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'İki Haftada Bir Gün';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'İki Haftada Bir Zamanlar';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Üye Fiyatı';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Misafir Fiyatı';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Yaş Aralığı';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge - $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Görünürlük';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Oyunlar alınırken hata oluştu!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Oyun bulunamadı!';

  @override
  String get homeScreenNewGameButtonText => 'Oyun oluştur';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => 'Kullanıcı spor istatistikleri alınamadı!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'Oyunlarınız alınamadı!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'Henüz hiçbir oyuna katılmadınız!';

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
  String get gameCreationScreenAppBarTitle => 'Oyun oluştur';

  @override
  String get gameCreationScreenNameScreenTitle => 'İsim';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'İsim';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'örn. Haftalık Futbol Maçı';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'İsim boş olamaz.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'İsim en az 3 karakter uzunluğunda olmalıdır.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Spor';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Sıklık ve Tarih/Saat';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Sıklık';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Başlangıç';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Bitiş';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage => 'Başlangıç saati boş olamaz.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage => 'Bitiş saati boş olamaz.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Fiyat';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Üye: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Misafir: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Yaş Aralığı';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Konum';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Lütfen bir konum seçin.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Görünürlük ve Görsel';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Profil Resmi';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Afiş';

  @override
  String get gameCreationScreenButtonPreviousText => 'Önceki';

  @override
  String get gameCreationScreenButtonNextText => 'Sonraki';

  @override
  String get gameCreationScreenButtonFinishText => 'Bitir';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Oyun başarıyla oluşturuldu!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Kullanıcı adı/e-posta';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Şifre';

  @override
  String get loginSignupScreenLoginLoginButton => 'Giriş Yap';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Şifrenizi mi unuttunuz?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'İsim';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Kullanıcı adı';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'E-posta';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Şifre';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Şifre';

  @override
  String get loginSignupScreenSignupSignupButton => 'Kayıt Ol';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'MyoroMatchup\'a yeni misiniz? Kayıt olun!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Zaten kayıtlı mısınız? Giriş yapın!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'Kullanıcı adı/e-posta boş olamaz.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Şifre boş olamaz.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'İsim boş olamaz.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'Kullanıcı adı boş olamaz.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'E-posta boş olamaz.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Şifre alanları boş olamaz.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Şifreler eşleşmiyor.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menü';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Oyun Oluştur';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Arkadaşlar';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Davetler';
}
