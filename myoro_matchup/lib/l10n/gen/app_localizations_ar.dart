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
  String get mmErrorFeedbackSubtitle =>
      'يرجى التحقق من اتصالك والمحاولة مرة أخرى!';

  @override
  String get mmErrorFeedbackActionButtonText => 'إعادة المحاولة';

  @override
  String get mmEmptyFeedbackActionButtonText => 'تحديث';

  @override
  String get mmSuccessFeedbackSubtitle => 'تمت العملية بنجاح!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'تم';

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
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
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
  String get invitationStatusEnumPendingLabel => 'قيد الانتظار';

  @override
  String get invitationStatusEnumAcceptedLabel => 'مقبول';

  @override
  String get invitationStatusEnumRejectedLabel => 'مرفوض';

  @override
  String get invitationStatusEnumExpiredLabel => 'منتهي الصلاحية';

  @override
  String get invitationStatusEnumCancelledLabel => 'ملغي';

  @override
  String get gameDetailsScreenBodyErrorStateTitle =>
      'فشل في استرداد تفاصيل اللعبة!';

  @override
  String get invitationListingScreenAppBarTitle => 'الدعوات';

  @override
  String get invitationListingScreenBodyErrorStateTitle =>
      'فشل في استرداد الدعوات!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle =>
      'لم يتم العثور على دعوات!';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =>
      'رسالة';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =>
      'الحالة';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =>
      'قبول';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =>
      'رفض';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'معلومات';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'اللاعبون';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText =>
      'دعوة لاعب';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'دعوة لاعب';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  ) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder =>
      'البحث عن المستخدمين...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel =>
      'الرسالة';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =>
      'إلغاء';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText =>
      'إرسال';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'التصنيفات';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =>
      'التكرار';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =>
      'اليوم الأساسي';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'الأوقات الأساسية';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'يوم كل أسبوعين';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'أوقات كل أسبوعين';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =>
      'سعر العضو';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =>
      'سعر الدخول';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =>
      'النطاق العمري';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  ) {
    return '$minAge إلى $maxAge';
  }

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =>
      'الرؤية';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'خطأ في استرداد الألعاب!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'لم يتم العثور على ألعاب!';

  @override
  String get homeScreenNewGameButtonText => 'إنشاء لعبة';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle =>
      'فشل في استرداد إحصائيات المستخدم الرياضية!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle =>
      'فشل في استرداد ألعابك!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle =>
      'لم تنضم إلى أي ألعاب بعد!';

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
  String get gameCreationScreenAppBarTitle => 'إنشاء لعبة';

  @override
  String get gameCreationScreenNameScreenTitle => 'الاسم';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'الاسم';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder =>
      'مثال: مباراة كرة قدم أسبوعية';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'لا يمكن أن يكون الاسم فارغًا.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage =>
      'يجب أن يكون الاسم 3 أحرف على الأقل.';

  @override
  String get gameCreationScreenSportScreenTitle => 'الرياضة';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'التكرار والتاريخ/الوقت';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'التكرار';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'البداية';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =>
      'النهاية';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'لا يمكن أن يكون وقت البداية فارغًا.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
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
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'يرجى تحديد موقع.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle =>
      'الرؤية والصورة';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'صورة الملف الشخصي';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'لافتة';

  @override
  String get gameCreationScreenButtonPreviousText => 'السابق';

  @override
  String get gameCreationScreenButtonNextText => 'التالي';

  @override
  String get gameCreationScreenButtonFinishText => 'إنهاء';

  @override
  String get gameCreationScreenGameCreationSuccessMessage =>
      'تم إنشاء اللعبة بنجاح!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'اسم المستخدم/البريد الإلكتروني';

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
  String get loginSignupScreenSignupEmailInputPlaceholder =>
      'البريد الإلكتروني';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'كلمة المرور';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder =>
      'كلمة المرور';

  @override
  String get loginSignupScreenSignupSignupButton => 'التسجيل';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'جديد في MyoroMatchup؟ سجل!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'مسجل بالفعل؟ سجل الدخول!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'لا يمكن أن يكون اسم المستخدم/البريد الإلكتروني فارغًا.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'لا يمكن أن تكون كلمة المرور فارغة.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'لا يمكن أن يكون الاسم فارغًا.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'لا يمكن أن يكون اسم المستخدم فارغًا.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'لا يمكن أن يكون البريد الإلكتروني فارغًا.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'لا يمكن أن تكون حقول كلمة المرور فارغة.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'كلمات المرور غير متطابقة.';

  @override
  String get mmAppBarMenuDrawerTitle => 'القائمة';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'إنشاء لعبة';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'الأصدقاء';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'الدعوات';
}
