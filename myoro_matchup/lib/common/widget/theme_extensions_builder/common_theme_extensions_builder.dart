import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension] builder of the common [Widget]s of the application.
List<ThemeExtension> commonThemeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    // App bars
    MmAppBarThemeExtension.builder(textTheme),

    // Feedbacks
    const MmEmptyFeedbackThemeExtension.builder(),
    const MmErrorFeedbackThemeExtension.builder(),

    // Inputs
    const MmLocationInputThemeExtension.builder(),
  ];
}
