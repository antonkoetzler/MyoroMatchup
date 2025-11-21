import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service of [User].
@singleton
final class UserService {
  /// Default constructor.
  UserService(this._sharedPreferencesService);

  /// Shared preferences service.
  final SharedPreferencesService _sharedPreferencesService;

  /// Getter of the logged in user.
  LoggedInUser? get loggedInUser {
    return _sharedPreferencesService.loggedInUser;
  }

  /// Returns if there is a user logged in.
  bool get isLoggedIn {
    return _sharedPreferencesService.loggedInUser != null;
  }
}
