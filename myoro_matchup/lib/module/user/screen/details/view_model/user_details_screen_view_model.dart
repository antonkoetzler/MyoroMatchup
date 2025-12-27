import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// View model of [UserDetailsScreen].
@injectable
final class UserDetailsScreenViewModel {
  /// Default constructor.
  UserDetailsScreenViewModel(this._sharedPreferencesService, this._userService);

  /// [SharedPreferencesService]
  final SharedPreferencesService _sharedPreferencesService;

  /// [UserService]
  final UserService _userService;

  /// Fetch function.
  Future<UserResponseDto> userRequest() async {
    return await _userService.get(_sharedPreferencesService.loggedInUser!.id);
  }

  /// On visibility changed.
  Future<String> changeProfileVisibility(VisibilityEnum visibility) async {
    return await _userService.updateVisibility(visibility);
  }

  /// Update location function.
  Future<String> updateLocation(MyoroCountryEnum country, String state, String city) async {
    return await _userService.updateLocation(country, state, city);
  }

  /// Fetch blocked users function.
  Future<List<UserResponseDto>> fetchBlockedUsers() async {
    return await _userService.fetchBlockedUsers();
  }

  /// Unblock user function.
  Future<String> unblockUser(UserResponseDto user) async {
    return await _userService.unblockUser(user.id);
  }

  /// Delete account function.
  Future<String> deleteAccount() async {
    return await _userService.deleteAccount();
  }
}
