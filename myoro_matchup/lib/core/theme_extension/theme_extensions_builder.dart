import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [Root]'s [MyoroAppConfiguration.themeExtensionsBuilder].
List<ThemeExtension> themeExtensionsBuilder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme) {
  return [
    // Game module.
    const GameDetailsScreenThemeExtension.builder(),
    GameListingScreenThemeExtension.builder(colorScheme, textTheme),

    // Login/signup module.
    LoginSignupScreenThemeExtension.builder(textTheme),
  ];
}
