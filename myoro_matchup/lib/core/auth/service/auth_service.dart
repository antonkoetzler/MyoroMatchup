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
    final id = await _authRepository.signup(request);
    await _sharedPreferencesService.setInt(SharedPreferencesEnum.loggedInUserId, id);
  }

  /// Login function.
  Future<void> login(LoginRequest request) async {
    final id = await _authRepository.login(request);
    await _sharedPreferencesService.setInt(SharedPreferencesEnum.loggedInUserId, id);
  }
}
