import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Service for authentication.
@injectable
final class AuthService {
  /// Default constructor.
  AuthService(this._sharedPreferencesService, this._authRepository);

  /// Shared preferences service.
  final SharedPreferencesService _sharedPreferencesService;

  /// Auth repository.
  final AuthRepository _authRepository;

  /// Signup function.
  Future<void> signup(SignupRequestDto request) async {
    MyoroLogger.info('[AuthService.signup]: Signing up user: ${request.email}.');
    try {
      final loggedInUser = await _authRepository.signup(request);
      await _sharedPreferencesService.setLoggedInUser(loggedInUser);
      MyoroLogger.info('[AuthService.signup]: User signed up successfully: ${request.email}.');
    } catch (e, stackTrace) {
      await MyoroLogger.error('[AuthService.signup]: Signup failed for: ${request.email}.', e, stackTrace);
      rethrow;
    }
  }

  /// Login function.
  Future<void> login(LoginRequestDto request) async {
    MyoroLogger.info('[AuthService.login]: Logging in user: ${request.email}.');
    try {
      final loggedInUser = await _authRepository.login(request);
      await _sharedPreferencesService.setLoggedInUser(loggedInUser);
      MyoroLogger.info('[AuthService.login]: User logged in successfully: ${request.email}.');
    } catch (e, stackTrace) {
      await MyoroLogger.error('[AuthService.login]: Login failed for: ${request.email}.', e, stackTrace);
      rethrow;
    }
  }
}
