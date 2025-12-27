import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// User repository.
@injectable
final class UserService {
  /// Default constructor.
  UserService(this._sharedPreferencesService);

  /// Shared preferences service.
  final SharedPreferencesService _sharedPreferencesService;

  /// Gets a user by ID.
  ///
  /// If no [id] is provided, the logged in user's ID is used.
  Future<UserResponseDto> get(int id) async {
    // TODO
    throw UnimplementedError();
  }

  /// Gets all users.
  ///
  /// [query] is optional and filters users by username, name, or email.
  Future<Set<UserResponseDto>> getAll([String query = kMyoroEmptyString]) async {
    // TODO
    throw UnimplementedError();
    //   final response = await _httpClient.get('/users', queryParameters: query.isNotEmpty ? {'query': query} : null);
    //   return response.data.map((e) => UserResponseDto.fromJson(e)).toList();
  }

  /// Checks if a user exists by username.
  Future<bool> existsByUsernameOrEmail(String value) async {
    final response = await mmSupabase.from('users').select('id').or('username.eq.$value,email.eq.$value').maybeSingle();
    return response != null;
  }

  /// Updates the visibility of the authenticated user.
  Future<String> updateVisibility(VisibilityEnum visibility) async {
    // TODO
    throw UnimplementedError();
    //   final response = await _httpClient.put('/users/visibility', data: {'visibility': visibility});
    //   return response.data['message'] as String;
  }

  /// Updates the location of the authenticated user.
  Future<String> updateLocation(MyoroCountryEnum country, String state, String city) async {
    // TODO
    throw UnimplementedError();
    //   // Get country code by creating a temporary UserLocationResponseDto and extracting from its JSON
    //   final tempLocation = UserLocationResponseDto(country: country, state: null, city: null);
    //   final countryCode = tempLocation.toJson()['country'] as String;

    //   final response = await _httpClient.put(
    //     '/users/location',
    //     data: {'country': countryCode, 'state': state, 'city': city},
    //   );
    //   return response.data['message'] as String;
  }

  /// Sends a friend request to a user.
  Future<String> sendFriendRequest(int recipientId) async {
    // TODO
    throw UnimplementedError();
    //   final response = await _httpClient.post('/users/friend-request/$recipientId');
    //   return response.data['message'] as String;
  }

  /// Blocks a user.
  Future<String> blockUser(int blockedId) async {
    // TODO
    throw UnimplementedError();
    //   final response = await _httpClient.post('/users/block/$blockedId');
    //   return response.data['message'] as String;
  }

  /// Fetches all blocked users for the authenticated user.
  Future<List<UserResponseDto>> fetchBlockedUsers() async {
    // TODO
    throw UnimplementedError();
    //   final response = await _httpClient.get('/users/blocked');
    //   return (response.data as List<Map<String, dynamic>>)
    //       .map<UserResponseDto>((e) => UserResponseDto.fromJson(e))
    //       .toList();
  }

  /// Unblocks a user.
  Future<String> unblockUser(int blockedId) async {
    // TODO
    throw UnimplementedError();
    //   final response = await _httpClient.delete('/users/block/$blockedId');
    //   return response.data['message'] as String;
  }

  /// Deletes the authenticated user's account.
  Future<String> deleteAccount() async {
    // TODO
    throw UnimplementedError();
    //   MyoroLogger.warning('[UserService.deleteAccount]: Deleting user account.');
    //   try {
    //     final response = await _httpClient.delete('/users');
    //     MyoroLogger.info('[UserService.deleteAccount]: User account deleted successfully.');
    //     return response.data['message'] as String;
    //   } catch (e, stackTrace) {
    //     await MyoroLogger.error('[UserService.deleteAccount]: Failed to delete user account.', e, stackTrace);
    //     rethrow;
    //   }
  }

  /// Updates the profile picture of the authenticated user.
  /// If [file] is null, removes the profile picture.
  Future<String> updateProfilePicture(File? file) async {
    // TODO
    throw UnimplementedError();
    //   MyoroLogger.info('[UserService.updateProfilePicture]: Updating profile picture.');
    //   try {
    //     final files = file != null && file.existsSync() ? {'file': file} : null;
    //     final response = await _httpClient.postMultipart('/users/profile-picture', files: files);
    //     MyoroLogger.info('[UserService.updateProfilePicture]: Profile picture updated successfully.');
    //     return response.data['message'] as String;
    //   } catch (e, stackTrace) {
    //     await MyoroLogger.error(
    //       '[UserService.updateProfilePicture]: Failed to update profile picture.',
    //       e,
    //       stackTrace,
    //     );
    //     rethrow;
    //   }
  }

  /// Getter of the logged in user.
  LoggedInUser? get loggedInUser {
    return _sharedPreferencesService.loggedInUser;
  }

  /// Returns if there is a user logged in.
  bool get isLoggedIn {
    return _sharedPreferencesService.loggedInUser != null;
  }
}
