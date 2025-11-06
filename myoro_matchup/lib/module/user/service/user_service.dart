import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service of [User].
@singleton
final class UserService {
  /// Default constructor.
  UserService(this._sharedPreferencesService);

  /// Shared preferences.
  final SharedPreferencesService _sharedPreferencesService;

  /// Getter of the logged in user.
  LoggedInUser? get loggedInUser {
    final loggedInUserJson = _sharedPreferencesService.getJson(SharedPreferencesEnum.loggedInUser);
    return loggedInUserJson != null ? LoggedInUser.fromJson(loggedInUserJson) : null;
  }

  /// Returns if there is a user logged in.
  bool get isLoggedIn {
    final loggedInUser = _sharedPreferencesService.getJson(SharedPreferencesEnum.loggedInUser);
    return loggedInUser != null && loggedInUser.isNotEmpty;
  }
}
