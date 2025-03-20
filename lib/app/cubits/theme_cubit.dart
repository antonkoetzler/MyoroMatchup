import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Cubit that stores what [ThemeMode] the application is currently in.
final class ThemeCubit extends Cubit<ThemeEnum> {
  final sharedPreferencesInstance =
      KiwiContainer().resolve<SharedPreferences>();

  ThemeCubit(super.initialState);

  /// Sets the state.
  void setTheme(ThemeEnum themeEnum) {
    emit(themeEnum);
  }
}
