import 'package:injectable/injectable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Invitation repository.
@injectable
final class InvitationRepository {
  /// Default constructor.
  InvitationRepository(this._httpClient);

  /// HTTP client.
  final HttpClient _httpClient;

  /// Sends an invitation to a user for a game.
  ///
  /// Returns a success message.
  Future<String> sendInvitation(int gameId, int inviteeId, String message) async {
    final response = await _httpClient.post('/invitations/invite/$gameId/$inviteeId', data: {'message': message});
    return response.data['message'];
  }

  /// Selects all invitations for the current user.
  ///
  /// Returns a list of invitations.
  Future<List<InvitationResponseDto>> select({
    String searchQuery = kMyoroEmptyString,
    InvitationStatusEnum? status,
  }) async {
    final response = await _httpClient.get(
      '/invitations',
      queryParameters: {if (searchQuery.isNotEmpty) 'query': searchQuery, if (status != null) 'status': status.apiKey},
    );
    final invitations = (response.data as List<Map<String, dynamic>>)
        .map<InvitationResponseDto>(InvitationResponseDto.fromJson)
        .toList();
    return invitations;
  }

  /// Accepts an invitation for the current user.
  ///
  /// Returns a success message.
  Future<String> acceptInvitation(int invitationId) async {
    final response = await _httpClient.post('/invitations/$invitationId/accept');
    return response.data['message'];
  }

  /// Declines an invitation for the current user.
  ///
  /// Returns a success message.
  Future<String> declineInvitation(int invitationId) async {
    final response = await _httpClient.post('/invitations/$invitationId/decline');
    return response.data['message'];
  }
}
