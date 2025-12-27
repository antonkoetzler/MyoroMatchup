/// Constants for subscription functionality.
final class SubscriptionConstants {
  SubscriptionConstants._();

  /// Monthly subscription price in USD.
  static const double monthlyPriceUsd = 7.00;

  /// Product ID for monthly subscription on iOS.
  /// TODO: Set up in App Store Connect.
  static const String iosMonthlyProductId = 'com.myoro.myoromatchup.premium_monthly';

  /// Product ID for monthly subscription on Android.
  /// TODO: Set up in Google Play Console.
  static const String androidMonthlyProductId = 'premium_monthly';

  /// Maximum number of games a free user can participate in.
  static const int freeUserMaxGameParticipation = 2;

  /// Legal URLs.
  /// TODO: Host these pages at antonkoetzler.github.io/legal
  static const String privacyPolicyUrl = 'https://antonkoetzler.github.io/legal/privacy-policy';
  static const String termsOfServiceUrl = 'https://antonkoetzler.github.io/legal/terms-of-service';
}
