import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'login_signup_screen_login_state.dart';
part 'login_signup_screen_signup_state.dart';
part 'login_signup_screen_state.dart';

/// View model of [LoginSignupScreen].
@injectable
final class LoginSignupScreenViewModel {
  /// State.
  final _state = LoginSignupScreenState();
  LoginSignupScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
