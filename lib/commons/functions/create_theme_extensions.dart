import 'package:flutter/material.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Creates the [ThemeExtension]s of the application.
List<ThemeExtension> createThemeExtensions(ThemeEnum themeEnum) {
  return [LoginScreenThemeExtension.fromThemeEnum(themeEnum)];
}
