import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// User repository.
@injectable
final class UserRepository {
  /// Default constructor.
  UserRepository(this._httpClient);

  /// HTTP client.
  final MmHttpClient _httpClient;

  /// Gets a user by ID.
  ///
  /// If no [id] is provided, the logged in user's ID is used.
  Future<UserResponseDto> get(int id) async {
    final response = await _httpClient.get('/users/$id');
    return UserResponseDto.fromJson(response.data);
  }

  /// Gets all users.
  ///
  /// [query] is optional and filters users by username, name, or email.
  Future<Set<UserResponseDto>> getAll([String query = kMyoroEmptyString]) async {
    final response = await _httpClient.get('/users', queryParameters: query.isNotEmpty ? {'query': query} : null);
    return response.data.map((e) => UserResponseDto.fromJson(e)).toList();
  }

  /// Updates the visibility of the authenticated user.
  Future<String> updateVisibility(VisibilityEnum visibility) async {
    final response = await _httpClient.put('/users/visibility', data: {'visibility': visibility});
    return response.data['message'] as String;
  }

  /// Updates the location of the authenticated user.
  Future<String> updateLocation(MyoroCountryEnum country, String state, String city) async {
    // Get country code by creating a temporary UserLocationResponseDto and extracting from its JSON
    final tempLocation = UserLocationResponseDto(country: country, state: null, city: null);
    final countryCode = tempLocation.toJson()['country'] as String;

    final response = await _httpClient.put(
      '/users/location',
      data: {'country': countryCode, 'state': state, 'city': city},
    );
    return response.data['message'] as String;
  }

  /// Sends a friend request to a user.
  Future<String> sendFriendRequest(int recipientId) async {
    final response = await _httpClient.post('/users/friend-request/$recipientId');
    return response.data['message'] as String;
  }

  /// Blocks a user.
  Future<String> blockUser(int blockedId) async {
    final response = await _httpClient.post('/users/block/$blockedId');
    return response.data['message'] as String;
  }

  /// Fetches all blocked users for the authenticated user.
  Future<List<UserResponseDto>> fetchBlockedUsers() async {
    final response = await _httpClient.get('/users/blocked');
    return (response.data as List<Map<String, dynamic>>)
        .map<UserResponseDto>((e) => UserResponseDto.fromJson(e))
        .toList();
  }

  /// Unblocks a user.
  Future<String> unblockUser(int blockedId) async {
    final response = await _httpClient.delete('/users/block/$blockedId');
    return response.data['message'] as String;
  }

  /// Deletes the authenticated user's account.
  Future<String> deleteAccount() async {
    MyoroLogger.warning('[UserRepository.deleteAccount]: Deleting user account.');
    try {
      final response = await _httpClient.delete('/users');
      MyoroLogger.info('[UserRepository.deleteAccount]: User account deleted successfully.');
      return response.data['message'] as String;
    } catch (e, stackTrace) {
      await MyoroLogger.error('[UserRepository.deleteAccount]: Failed to delete user account.', e, stackTrace);
      rethrow;
    }
  }

  /// Updates the profile picture of the authenticated user.
  /// If [file] is null, removes the profile picture.
  Future<String> updateProfilePicture(File? file) async {
    MyoroLogger.info('[UserRepository.updateProfilePicture]: Updating profile picture.');
    try {
      final files = file != null && file.existsSync() ? {'file': file} : null;
      final response = await _httpClient.postMultipart('/users/profile-picture', files: files);
      MyoroLogger.info('[UserRepository.updateProfilePicture]: Profile picture updated successfully.');
      return response.data['message'] as String;
    } catch (e, stackTrace) {
      await MyoroLogger.error(
        '[UserRepository.updateProfilePicture]: Failed to update profile picture.',
        e,
        stackTrace,
      );
      rethrow;
    }
  }
}
