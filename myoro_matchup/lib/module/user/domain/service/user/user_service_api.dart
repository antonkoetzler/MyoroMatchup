import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// API implementation of [UserService].
@Singleton(as: UserService)
final class UserServiceApi implements UserService {
  UserServiceApi(this._userRepository);

  /// User repository for data access.
  final UserRepository _userRepository;

  @override
  Future<bool> isLoggedIn() async {
    // TODO: Mocked.
    // In the future, this might use _userRepository to check session data
    return false;
  }
}
