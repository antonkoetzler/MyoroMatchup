import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service of [User].
@singleton
final class UserService {
  /// Default constructor.
  UserService(this.sharedPreferencesService);

  /// Shared preferences.
  final SharedPreferencesService sharedPreferencesService;

  /// Returns if there is a user logged in.
  bool get isLoggedIn {
    return sharedPreferencesService.getInt(SharedPreferencesEnum.loggedInUserId) != null;
  }
}
