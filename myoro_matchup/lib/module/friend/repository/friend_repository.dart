import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Friend repository.
@injectable
final class FriendRepository {
  /// Default constructor.
  FriendRepository(this._httpClient);

  /// HTTP client.
  final HttpClient _httpClient;

  /// Sends a friend request to a user.
  ///
  /// Returns a success message.
  Future<String> sendFriendRequest(int recipientId) async {
    final response = await _httpClient.post('/friend-requests/send/$recipientId');
    return response.data['message'];
  }

  /// Selects all friend requests for the current user.
  ///
  /// Returns a list of friend requests.
  Future<List<FriendRequestResponseDto>> select({
    String searchQuery = kMyoroEmptyString,
    FriendRequestStatusEnum? status,
  }) async {
    final response = await _httpClient.get(
      '/friend-requests',
      queryParameters: {if (searchQuery.isNotEmpty) 'query': searchQuery, if (status != null) 'status': status.apiKey},
    );
    final friendRequests = (response.data as List<Map<String, dynamic>>)
        .map<FriendRequestResponseDto>(FriendRequestResponseDto.fromJson)
        .toList();
    return friendRequests;
  }

  /// Accepts a friend request for the current user.
  ///
  /// Returns a success message.
  Future<String> acceptFriendRequest(int friendRequestId) async {
    final response = await _httpClient.post('/friend-requests/$friendRequestId/accept');
    return response.data['message'];
  }

  /// Fetches all friends for the current user.
  ///
  /// Returns a list of friends (accepted friend requests).
  Future<List<FriendRequestResponseDto>> fetchFriends({String searchQuery = kMyoroEmptyString}) async {
    final response = await _httpClient.get(
      '/friend-requests/friends',
      queryParameters: {if (searchQuery.isNotEmpty) 'query': searchQuery},
    );
    final friends = (response.data as List<Map<String, dynamic>>)
        .map<FriendRequestResponseDto>(FriendRequestResponseDto.fromJson)
        .toList();
    return friends;
  }
}
