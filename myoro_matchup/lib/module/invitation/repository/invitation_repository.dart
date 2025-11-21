import 'package:injectable/injectable.dart';
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
  Future<List<InvitationResponseDto>> select() async {
    final response = await _httpClient.get('/invitations');
    final invitations = (response.data as List<Map<String, dynamic>>)
        .map<InvitationResponseDto>(InvitationResponseDto.fromJson)
        .toList();
    return invitations;
  }
}
