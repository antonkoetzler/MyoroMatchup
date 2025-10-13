/// User service for business logic.
abstract interface class UserService {
  /// Returns if the user is logged in.
  Future<bool> isLoggedIn();
}
