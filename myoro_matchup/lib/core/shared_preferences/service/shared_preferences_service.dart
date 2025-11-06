import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service of [SharedPreferences].
@singleton
final class SharedPreferencesService {
  /// Default constructor.
  SharedPreferencesService(this._sharedPreferences);

  /// Shared preferences.
  final SharedPreferences _sharedPreferences;

  /// Returns a [String] value from the shared preferences.
  String? getString(SharedPreferencesEnum value) {
    return _sharedPreferences.getString(value.key);
  }

  /// Sets a [String] value in the shared preferences.
  Future<void> setString(SharedPreferencesEnum value, String string) async {
    await _sharedPreferences.setString(value.key, string);
  }

  /// Sets a JSON value in the shared preferences.
  Future<void> setJson(SharedPreferencesEnum value, Map<String, dynamic> json) async {
    await setString(value, jsonEncode(json));
  }

  /// Returns a JSON value from the shared preferences.
  Map<String, dynamic>? getJson(SharedPreferencesEnum value) {
    final string = getString(value);
    return string == null ? null : jsonDecode(string);
  }
}
