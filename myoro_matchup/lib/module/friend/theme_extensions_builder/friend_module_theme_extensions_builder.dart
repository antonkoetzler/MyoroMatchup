import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension]s builder of the friend module.
List<ThemeExtension> friendModuleThemeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [FriendListingScreenThemeExtension.builder(textTheme)];
}
