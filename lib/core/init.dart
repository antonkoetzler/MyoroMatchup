import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Initializes the application before [runApp] may execute in main.dart.
Future<void> init() async {
  // The application's global [KiwiContainer].
  final kiwiContainer = KiwiContainer();

  // Add [SharedPreferences] to [KiwiContainer].
  final sharedPreferencesInstance = await SharedPreferences.getInstance();
  kiwiContainer.registerSingleton<SharedPreferences>(
    (_) => sharedPreferencesInstance,
  );

  // Theme initialization.
  final themeInUseIdentifier = sharedPreferencesInstance.getString(
    kSharedPreferencesThemeKey,
  );
  if (themeInUseIdentifier == null) {
    await sharedPreferencesInstance.setString(
      kSharedPreferencesThemeKey,
      ThemeEnum.defaultTheme.identifier,
    );
  }
  final themeCubit = ThemeCubit(
    ThemeEnum.tryParse(
      sharedPreferencesInstance.getString(kSharedPreferencesThemeKey)!,
    )!,
  );
  KiwiContainer().registerSingleton<ThemeCubit>((_) => themeCubit);
}
