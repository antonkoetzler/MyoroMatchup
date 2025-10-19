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
  /// Returns the token of the newly created [User].
  Future<String> signup(SignupRequest request) async {
    final response = await _httpClient.post('/auth/signup', data: request.toJson());
    return response.data[SharedPreferencesEnum.loginToken.key];
  }

  /// Login.
  ///
  /// Returns the token of the logged in [User].
  Future<String> login(LoginRequest request) async {
    final response = await _httpClient.post('/auth/login', data: request.toJson());
    return response.data[SharedPreferencesEnum.loginToken.key];
  }
}
