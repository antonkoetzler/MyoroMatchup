import 'package:flutter/material.dart';
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
  LoginSignupScreenViewModel(this._supabaseService, UserService userService) {
    _state = LoginSignupScreenState(() async {
      return await userService.existsByUsernameOrEmail(_state.username);
    });
    _state.usernameInputController.addListener(_usernameInputControllerListener);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      PackageInfo.fromPlatform().then((packageInfo) {
        _state.versionText = '${packageInfo.version}+${packageInfo.buildNumber}';
      });
    });
  }

  /// [MmSupabaseService] instance.
  final MmSupabaseService _supabaseService;

  /// State.
  late final LoginSignupScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// On tap up.
  void oAuthButtonOnTapUp(OAuthProvider provider) {
    _state.providerBeingUsedToLogin = provider;
    _supabaseService.signInWithOAuth(provider).then((_) {
      _state.providerBeingUsedToLogin = null;
    });
  }

  /// On username input controller listener.
  void _usernameInputControllerListener() {
    if (_state.formKey.currentState?.validate() ?? false) {
      _state.existsByUsernameOrEmailRequestController.fetch();
    }
  }

  /// [_state] getter.
  LoginSignupScreenState get state {
    return _state;
  }
}
