import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service for accessing shared preferences values.
///
/// Provides typed getters and setters for each value stored in shared preferences.
/// This is the high-level API that should be used instead of directly accessing
/// [SharedPreferencesRepository].
@injectable
final class SharedPreferencesService {
  /// Key for logged in user.
  static const String _loggedInUserKey = 'logged_in_user';

  /// Default constructor.
  SharedPreferencesService(this._sharedPreferencesRepository);

  /// Shared preferences repository.
  final SharedPreferencesRepository _sharedPreferencesRepository;

  /// Gets the logged in user.
  LoggedInUser? get loggedInUser {
    final json = _sharedPreferencesRepository.getJson(_loggedInUserKey);
    return json != null ? LoggedInUser.fromJson(json) : null;
  }

  /// Sets the logged in user.
  Future<void> setLoggedInUser(LoggedInUser? value) async {
    if (value != null) {
      await _sharedPreferencesRepository.setJson(_loggedInUserKey, value.toJson());
    } else {
      await _sharedPreferencesRepository.remove(_loggedInUserKey);
    }
  }
}
