// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'تعذر الاتصال بالخادم، يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.';

  @override
  String get mmErrorFeedbackSubtitle => 'يرجى التحقق من اتصالك والمحاولة مرة أخرى!';

  @override
  String get mmErrorFeedbackActionButtonText => 'إعادة المحاولة';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'مكان';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'مدينة';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'ولاية';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'دولة';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'قارة';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'خاص';

  @override
  String get visibilityEnumPublicLabel => 'عام';

  @override
  String get frequencyEnumWeeklyLabel => 'أسبوعي';

  @override
  String get frequencyEnumBiWeeklyLabel => 'كل أسبوعين';

  @override
  String get frequencyEnumMonthlyLabel => 'شهري';

  @override
  String get frequencyEnumYearlyLabel => 'سنوي';

  @override
  String get sportsEnumFootballLabel => 'كرة القدم';

  @override
  String get sportsEnumFutsalLabel => 'كرة الصالات';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'الكرة الطائرة';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'فشل في استرداد تفاصيل اللعبة!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'اللاعبون';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'اللاعبون';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'التصنيفات';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => 'خطأ في استرداد الألعاب!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => 'لم يتم العثور على ألعاب!';

  @override
  String get gameListingScreenNewGameButtonText => 'إنشاء لعبة';

  @override
  String get gameCreationScreenAppBarTitle => 'إنشاء لعبة';

  @override
  String get gameCreationScreenNameScreenTitle => 'الاسم';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'الاسم';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'مثال: مباراة كرة قدم أسبوعية';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'لا يمكن أن يكون الاسم فارغًا.';

  @override
  String get gameCreationScreenSportScreenTitle => 'الرياضة';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'التكرار والتاريخ/الوقت';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'التكرار';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'البداية';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'النهاية';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'لا يمكن أن يكون وقت البداية فارغًا.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'لا يمكن أن يكون وقت النهاية فارغًا.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'السعر';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'عضو: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'زائر: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'النطاق العمري';

  @override
  String get gameCreationScreenLocationScreenTitle => 'الموقع';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'يرجى تحديد موقع.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'الرؤية والصورة';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'صورة الملف الشخصي';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'لافتة';

  @override
  String get gameCreationScreenButtonPreviousText => 'السابق';

  @override
  String get gameCreationScreenButtonNextText => 'التالي';

  @override
  String get gameCreationScreenButtonFinishText => 'إنهاء';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'اسم المستخدم/البريد الإلكتروني';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'كلمة المرور';

  @override
  String get loginSignupScreenLoginLoginButton => 'تسجيل الدخول';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'نسيت كلمة المرور؟';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'الاسم';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'اسم المستخدم';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'البريد الإلكتروني';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'كلمة المرور';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'كلمة المرور';

  @override
  String get loginSignupScreenSignupSignupButton => 'التسجيل';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'جديد في MyoroMatchup؟ سجل!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'مسجل بالفعل؟ سجل الدخول!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'لا يمكن أن يكون اسم المستخدم/البريد الإلكتروني فارغًا.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'لا يمكن أن تكون كلمة المرور فارغة.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'لا يمكن أن يكون الاسم فارغًا.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'لا يمكن أن يكون اسم المستخدم فارغًا.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'لا يمكن أن يكون البريد الإلكتروني فارغًا.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'لا يمكن أن تكون حقول كلمة المرور فارغة.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'كلمات المرور غير متطابقة.';

  @override
  String get mmAppBarMenuDrawerTitle => 'القائمة';

  @override
  String get mmAppBarMenuDrawerUserScreenText => 'شاشة المستخدم';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'إنشاء لعبة';
}
