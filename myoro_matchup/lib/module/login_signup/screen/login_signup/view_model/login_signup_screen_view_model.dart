import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'login_signup_screen_state.dart';

/// View model of [LoginSignupScreen].
@injectable
final class LoginSignupScreenViewModel {
  /// Default constructor.
  LoginSignupScreenViewModel(this._supabaseService) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      PackageInfo.fromPlatform().then((packageInfo) {
        _state.versionText = '${packageInfo.version}+${packageInfo.buildNumber}';
      });
    });
  }

  /// [MmSupabaseService] instance.
  final MmSupabaseService _supabaseService;

  /// State.
  final _state = LoginSignupScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// On tap up.
  void oAuthButtonOnTapUp(OAuthProvider provider) async {
    await _supabaseService.signInWithOAuth(provider);
  }

  /// [_state] getter.
  LoginSignupScreenState get state {
    return _state;
  }
}
