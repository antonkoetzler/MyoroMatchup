import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension]s builder of the user module.
List<ThemeExtension> userModuleThemeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [UserDetailsScreenThemeExtension.builder(colorScheme, textTheme)];
}
