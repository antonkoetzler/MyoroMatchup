import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for authentication.
@injectable
final class AuthRepository {
  /// Default constructor.
  AuthRepository(this._httpClient);

  /// HTTP client.
  final HttpClient _httpClient;

  /// Signup.
  ///
  /// Returns the ID of the newly created user.
  Future<int> signup(SignupRequest request) async {
    final response = await _httpClient.post('/auth/signup', data: request.toJson());
    return response.data[User.idJsonKey];
  }

  /// Login.
  ///
  /// Returns the [User] if successful.
  Future<int> login(LoginRequest request) async {
    final response = await _httpClient.post('/auth/login', data: request.toJson());
    return response.data[User.idJsonKey];
  }
}
