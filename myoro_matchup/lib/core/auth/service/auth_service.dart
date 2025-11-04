import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service for authentication.
@injectable
final class AuthService {
  /// Default constructor.
  AuthService(this._sharedPreferencesService, this._authRepository);

  /// Shared preferences.
  final SharedPreferencesService _sharedPreferencesService;

  /// Auth repository.
  final AuthRepository _authRepository;

  /// Signup function.
  Future<void> signup(SignupRequest request) async {
    print(request);
    final token = await _authRepository.signup(request);
    await _sharedPreferencesService.setString(SharedPreferencesEnum.loginToken, token);
  }

  /// Login function.
  Future<void> login(LoginRequest request) async {
    final token = await _authRepository.login(request);
    await _sharedPreferencesService.setString(SharedPreferencesEnum.loginToken, token);
  }
}
