import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension]s builder of the home module.
List<ThemeExtension> homeModuleThemeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [HomeScreenThemeExtension.builder(colorScheme, textTheme)];
}
