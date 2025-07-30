import 'package:myoro_matchup/myoro_matchup.dart';

/// User service.
abstract interface class UserService implements CrudService<User> {
  /// Returns if the user is logged in.
  Future<bool> isLoggedIn();
}
