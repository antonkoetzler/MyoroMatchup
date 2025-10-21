import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating the days of the week.
enum MmDayEnum {
  /// Monday.
  monday,

  /// Tuesday.
  tuesday,

  /// Wednesday.
  wednesday,

  /// Thursday.
  thursday,

  /// Friday.
  friday,

  /// Saturday.
  saturday,

  /// Sunday.
  sunday;

  /// Label.
  String get label {
    final mmDayEnumMondayLabel = localization.mmDayEnumMondayLabel;
    final mmDayEnumTuesdayLabel = localization.mmDayEnumTuesdayLabel;
    final mmDayEnumWednesdayLabel = localization.mmDayEnumWednesdayLabel;
    final mmDayEnumThursdayLabel = localization.mmDayEnumThursdayLabel;
    final mmDayEnumFridayLabel = localization.mmDayEnumFridayLabel;
    final mmDayEnumSaturdayLabel = localization.mmDayEnumSaturdayLabel;
    final mmDayEnumSundayLabel = localization.mmDayEnumSundayLabel;

    return switch (this) {
      monday => mmDayEnumMondayLabel,
      tuesday => mmDayEnumTuesdayLabel,
      wednesday => mmDayEnumWednesdayLabel,
      thursday => mmDayEnumThursdayLabel,
      friday => mmDayEnumFridayLabel,
      saturday => mmDayEnumSaturdayLabel,
      sunday => mmDayEnumSundayLabel,
    };
  }
}
