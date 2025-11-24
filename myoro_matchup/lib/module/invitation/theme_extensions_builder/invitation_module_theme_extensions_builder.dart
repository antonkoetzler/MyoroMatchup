import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [ThemeExtension]s builder of the invitation module.
List<ThemeExtension> invitationModuleThemeExtensionsBuilder(
  bool isDarkMode,
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  return [InvitationListingScreenThemeExtension.builder(textTheme)];
}
