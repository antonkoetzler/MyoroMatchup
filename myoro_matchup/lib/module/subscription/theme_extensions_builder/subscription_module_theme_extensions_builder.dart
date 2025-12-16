import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension] builder of the subscription module.
List<ThemeExtension> subscriptionModuleThemeExtensionsBuilder(
  bool isDarkMode,
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [PremiumGateWidgetThemeExtension.builder(colorScheme, textTheme)];
}
