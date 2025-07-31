import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension] builder of the login signup module.
List<ThemeExtension> loginSignupModuleThemeExtensionsBuilder(
  bool isDarkMode,
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [LoginSignupScreenThemeExtension.builder(textTheme)];
}
