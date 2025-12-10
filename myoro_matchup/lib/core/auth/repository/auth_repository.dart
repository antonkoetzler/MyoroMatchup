import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository for authentication.
@injectable
final class AuthRepository {
  /// Default constructor.
  AuthRepository(this._httpClient);

  /// HTTP client.
  final MmHttpClient _httpClient;

  /// Signup.
  ///
  /// Returns the token of the newly created [User].
  Future<LoggedInUser> signup(SignupRequestDto request) async {
    final response = await _httpClient.post('/auth/signup', data: request.toJson());
    return LoggedInUser.fromJson(response.data['user']);
  }

  /// Login.
  ///
  /// Returns the token of the logged in [User].
  Future<LoggedInUser> login(LoginRequestDto request) async {
    final response = await _httpClient.post('/auth/login', data: request.toJson());
    return LoggedInUser.fromJson(response.data['user']);
  }

  /// Forgot password.
  ///
  /// Returns a success message.
  Future<String> forgotPassword(ForgotPasswordRequestDto request) async {
    final response = await _httpClient.post('/auth/forgot-password', data: request.toJson());
    return response.data['message'];
  }
}
