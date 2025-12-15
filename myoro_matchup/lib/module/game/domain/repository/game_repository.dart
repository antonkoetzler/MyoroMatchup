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

  /// Gets teams of a game.
  Future<List<GameTeamResponseDto>> getTeams(int gameId) async {
    final response = await _httpClient.get('/games/$gameId/teams');
    final teams = (response.data as List)
        .map<GameTeamResponseDto>((json) => GameTeamResponseDto.fromJson(json))
        .toList();
    return teams;
  }
}
