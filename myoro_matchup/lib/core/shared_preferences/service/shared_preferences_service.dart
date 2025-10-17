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

  /// Returns a [int] value from the shared preferences.
  int? getInt(SharedPreferencesEnum value) {
    return _sharedPreferences.getInt(value.key);
  }

  /// Sets a [int] value in the shared preferences.
  Future<void> setInt(SharedPreferencesEnum value, int int) async {
    await _sharedPreferences.setInt(value.key, int);
  }
}
