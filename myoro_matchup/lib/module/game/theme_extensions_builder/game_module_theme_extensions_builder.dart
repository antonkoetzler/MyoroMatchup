import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension]s builder of the game module.
List<ThemeExtension> gameModuleThemeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    // Shared widgets
    GameCardThemeExtension.builder(colorScheme, textTheme),

    // Screens
    GameCreationScreenThemeExtension.builder(textTheme),
    GameDetailsScreenThemeExtension.builder(textTheme),
  ];
}
