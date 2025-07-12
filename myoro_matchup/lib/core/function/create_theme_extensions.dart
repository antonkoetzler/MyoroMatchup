import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Creates the [ThemeExtension]s of the application.
List<ThemeExtension> createThemeExtensions(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [GameScreenThemeExtension.builder(textTheme)];
}
