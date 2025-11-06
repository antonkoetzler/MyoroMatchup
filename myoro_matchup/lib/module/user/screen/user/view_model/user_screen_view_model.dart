import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'user_screen_state.dart';

/// View model of the user screen.
@injectable
final class UserScreenViewModel {
  /// Default constructor.
  UserScreenViewModel(this._userService, this._userRepository) {
    _state = UserScreenState(_getUser);
  }

  /// User service.
  final UserService _userService;

  /// User repository.
  final UserRepository _userRepository;

  /// State.
  late final UserScreenState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_getUsers] function.
  Future<User> _getUser() async {
    final loggedInUserId = _userService.loggedInUser?.id;
    assert(loggedInUserId != null, '[UserScreenViewModel]: Logged in user ID is null.');
    final user = await _userRepository.get(loggedInUserId!);
    return user;
  }

  /// [_state] getter.
  UserScreenState get state {
    return _state;
  }
}
