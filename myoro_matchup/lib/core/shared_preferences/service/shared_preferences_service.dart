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
}
