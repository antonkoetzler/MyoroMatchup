import 'package:faker/faker.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating the frequency of which a [Game] is played.
enum FrequencyEnum {
  /// Weekly.
  weekly,

  /// Bi-weekly.
  biWeekly,

  /// Monthly.
  monthly,

  /// Yearly.
  yearly;

  factory FrequencyEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Label.
  String get label {
    return switch (this) {
      weekly => localization.frequencyEnumWeeklyLabel,
      biWeekly => localization.frequencyEnumBiWeeklyLabel,
      monthly => localization.frequencyEnumMonthlyLabel,
      yearly => localization.frequencyEnumYearlyLabel,
    };
  }

  bool get isWeekly => this == weekly;
  bool get isBiWeekly => this == biWeekly;
  bool get isMonthly => this == monthly;
  bool get isYearly => this == yearly;
}
