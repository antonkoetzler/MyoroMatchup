import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension] builder of the common [Widget]s of the application.
List<ThemeExtension> commonThemeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    // Feedback
    const MyoroEmptyFeedbackThemeExtension.builder(),
    const MyoroErrorFeedbackThemeExtension.builder(),
    MyoroFeedbackThemeExtension.builder(textTheme),
  ];
}
