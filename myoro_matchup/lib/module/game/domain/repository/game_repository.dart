import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository of [Game]s.
@injectable
final class GameRepository {
  /// Default constructor.
  GameRepository(this._httpClient);

  /// HTTP client.
  final MmHttpClient _httpClient;

  /// Gets a [Game]
  Future<GameResponseDto>? get(int id) async {
    final response = await _httpClient.get('/games/$id');
    return GameResponseDto.fromJson(response.data);
  }

  /// Gets all [Game]s.
  Future<Set<GameResponseDto>> select() async {
    final response = await _httpClient.get('/games');
    return response.data.map<GameResponseDto>(GameResponseDto.fromJson).toSet();
  }

  /// Creates a game.
  Future<int> create(GameCreationRequestDto game) async {
    MmLogger.info('[GameRepository.create]: Creating game: ${game.name}.');
    try {
      final response = await _httpClient.post('/games', data: game.toJson());
      final id = response.data['id'];
      MmLogger.info('[GameRepository.create]: Game created successfully: ${game.name} (ID: $id).');
      return id;
    } catch (e, stackTrace) {
      await MmLogger.error('[GameRepository.create]: Failed to create game: ${game.name}.', e, stackTrace);
      rethrow;
    }
  }

  /// Sets the WhatsApp group chat link for a game.
  ///
  /// Returns a success message.
  Future<String> setWhatsAppGroupChatLink(int gameId, String link) async {
    final response = await _httpClient.put(
      '/games/$gameId/whatsapp-group-chat-link',
      data: {'whatsAppGroupChatLink': link},
    );
    return response.data['message'];
  }

  /// Sets the use WhatsApp group chat bot flag for a game.
  ///
  /// Returns a success message.
  Future<String> setUseWhatsAppGroupChatBot(int gameId, bool useBot) async {
    final response = await _httpClient.put(
      '/games/$gameId/use-whatsapp-group-chat-bot',
      data: {'useWhatsAppGroupChatBot': useBot},
    );
    return response.data['message'];
  }

  /// Gets players of a game.
  Future<List<GamePlayerResponseDto>> getPlayers(int gameId) async {
    final response = await _httpClient.get('/games/$gameId/players');
    final players = (response.data as List)
        .map<GamePlayerResponseDto>((json) => GamePlayerResponseDto.fromJson(json))
        .toList();
    return players;
  }
}
