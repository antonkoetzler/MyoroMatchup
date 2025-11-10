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
  String get gameDetailsScreenBodyErrorStateTitle => 'Gagal mengambil detail permainan!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Pemain';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Pemain';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Peringkat';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => 'Kesalahan saat mengambil permainan!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'Tidak ada permainan ditemukan!';

  @override
  String get gameListingScreenNewGameButtonText => 'Buat permainan';

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
  String get mmAppBarMenuDrawerUserScreenText => 'Layar Pengguna';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Buat Permainan';
}
