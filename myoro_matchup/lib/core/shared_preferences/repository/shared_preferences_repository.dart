import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository of [SharedPreferences].
///
/// Low-level API for accessing shared preferences. For application code,
/// use [SharedPreferencesService] instead, which provides typed getters and setters.
@singleton
final class SharedPreferencesRepository {
  /// Default constructor.
  SharedPreferencesRepository(this._sharedPreferences);

  /// Shared preferences.
  final SharedPreferences _sharedPreferences;

  /// Returns a [String] value from the shared preferences.
  String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  /// Sets a [String] value in the shared preferences.
  Future<void> setString(String key, String string) async {
    await _sharedPreferences.setString(key, string);
  }

  /// Sets a JSON value in the shared preferences.
  Future<void> setJson(String key, Map<String, dynamic> json) async {
    await setString(key, jsonEncode(json));
  }

  /// Returns a JSON value from the shared preferences.
  Map<String, dynamic>? getJson(String key) {
    final string = getString(key);
    return string == null ? null : jsonDecode(string);
  }

  /// Removes a value from the shared preferences.
  Future<void> remove(String key) async {
    await _sharedPreferences.remove(key);
  }
}
