import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// User service for business logic.
@injectable
final class UserService {
  /// Default constructor.
  UserService(this._userRepository);

  /// User repository for data access.
  final UserRepository _userRepository;

  /// Returns if the user is logged in.
  Future<bool> isLoggedIn() async {
    _userRepository;
    // TODO: Mocked.
    // In the future, this might use _userRepository to check session data
    return false;
  }
}
