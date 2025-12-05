import 'package:injectable/injectable.dart';
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
    MmLogger.info('[AuthService.signup]: Signing up user: ${request.email}.');
    try {
      final loggedInUser = await _authRepository.signup(request);
      await _sharedPreferencesService.setLoggedInUser(loggedInUser);
      MmLogger.success('[AuthService.signup]: User signed up successfully: ${request.email}.');
    } catch (e, stackTrace) {
      await MmLogger.error('[AuthService.signup]: Signup failed for: ${request.email}.', e, stackTrace);
      rethrow;
    }
  }

  /// Login function.
  Future<void> login(LoginRequestDto request) async {
    MmLogger.info('[AuthService.login]: Logging in user: ${request.email}.');
    try {
      final loggedInUser = await _authRepository.login(request);
      await _sharedPreferencesService.setLoggedInUser(loggedInUser);
      MmLogger.success('[AuthService.login]: User logged in successfully: ${request.email}.');
    } catch (e, stackTrace) {
      await MmLogger.error('[AuthService.login]: Login failed for: ${request.email}.', e, stackTrace);
      rethrow;
    }
  }

  /// Forgot password function.
  ///
  /// Returns a success message.
  Future<String> forgotPassword(ForgotPasswordRequestDto request) async {
    MmLogger.info('[AuthService.forgotPassword]: Forgot password requested for: ${request.email}.');
    try {
      final message = await _authRepository.forgotPassword(request);
      MmLogger.success('[AuthService.forgotPassword]: Forgot password email sent to: ${request.email}.');
      return message;
    } catch (e, stackTrace) {
      await MmLogger.error(
        '[AuthService.forgotPassword]: Forgot password failed for: ${request.email}.',
        e,
        stackTrace,
      );
      rethrow;
    }
  }
}
