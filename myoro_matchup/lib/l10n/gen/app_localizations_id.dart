// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Tidak dapat terhubung ke server, harap periksa koneksi internet Anda dan coba lagi.';

  @override
  String get mmErrorFeedbackSubtitle => 'Harap verifikasi koneksi Anda dan coba lagi!';

  @override
  String get mmErrorFeedbackActionButtonText => 'Coba Lagi';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Muat Ulang';

  @override
  String get mmSuccessFeedbackSubtitle => 'Operasi berhasil diselesaikan!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Selesai';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Tempat';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Kota';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Provinsi';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Negara';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Benua';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Pribadi';

  @override
  String get visibilityEnumPublicLabel => 'Publik';

  @override
  String get frequencyEnumWeeklyLabel => 'Mingguan';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Dua Mingguan';

  @override
  String get frequencyEnumMonthlyLabel => 'Bulanan';

  @override
  String get frequencyEnumYearlyLabel => 'Tahunan';

  @override
  String get sportsEnumFootballLabel => 'Sepak Bola';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Bola Voli';

  @override
  String get invitationStatusEnumPendingLabel => 'Menunggu';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Diterima';

  @override
  String get invitationStatusEnumRejectedLabel => 'Ditolak';

  @override
  String get invitationStatusEnumExpiredLabel => 'Kedaluwarsa';

  @override
  String get invitationStatusEnumCancelledLabel => 'Dibatalkan';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'Gagal mengambil detail permainan!';

  @override
  String get invitationListingScreenAppBarTitle => 'Undangan';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'Gagal mengambil undangan!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Tidak ada undangan ditemukan!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Pesan';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Status';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Terima';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Tolak';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Pemain';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Undang Pemain';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Undang Pemain';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Cari pengguna...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Pesan';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Batal';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Kirim';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Peringkat';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Frekuensi';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Hari Utama';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel => 'Waktu Utama';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Hari Dua Mingguan';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Waktu Dua Mingguan';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Harga Anggota';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Harga Tamu';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Rentang Usia';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge hingga $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Visibilitas';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Kesalahan saat mengambil permainan!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Tidak ada permainan ditemukan!';

  @override
  String get homeScreenNewGameButtonText => 'Buat permainan';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle => 'Gagal mengambil statistik olahraga pengguna!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'Gagal mengambil permainan Anda!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'Anda belum bergabung dengan permainan apa pun!';

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
  String get gameCreationScreenAppBarTitle => 'Buat permainan';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nama';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Nama';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'mis. Permainan Sepak Bola Mingguan';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'Nama tidak boleh kosong.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'Nama harus memiliki setidaknya 3 karakter.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Olahraga';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Frekuensi dan Tanggal/Waktu';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Frekuensi';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Mulai';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Selesai';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Waktu mulai tidak boleh kosong.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'Waktu selesai tidak boleh kosong.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Harga';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Anggota: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Tamu: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Rentang Usia';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Lokasi';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Silakan pilih lokasi.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Visibilitas dan Gambar';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Foto Profil';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Sebelumnya';

  @override
  String get gameCreationScreenButtonNextText => 'Selanjutnya';

  @override
  String get gameCreationScreenButtonFinishText => 'Selesai';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Permainan berhasil dibuat!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Nama pengguna/email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Kata sandi';

  @override
  String get loginSignupScreenLoginLoginButton => 'Masuk';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Lupa kata sandi?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Nama';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Nama pengguna';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Kata sandi';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Kata sandi';

  @override
  String get loginSignupScreenSignupSignupButton => 'Daftar';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'Baru di MyoroMatchup? Daftar!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Sudah terdaftar? Masuk!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'Nama pengguna/email tidak boleh kosong.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Kata sandi tidak boleh kosong.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'Nama tidak boleh kosong.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'Nama pengguna tidak boleh kosong.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'Email tidak boleh kosong.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Bidang kata sandi tidak boleh kosong.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Kata sandi tidak cocok.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Buat Permainan';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Teman';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Undangan';
}
