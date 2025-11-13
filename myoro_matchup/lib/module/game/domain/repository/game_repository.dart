import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository of [Game]s.
@injectable
final class GameRepository {
  /// Default constructor.
  GameRepository(this._httpClient);

  /// HTTP client.
  final HttpClient _httpClient;

  /// Gets a [Game]
  ///
  /// TODO: Mocked.
  Future<GameResponseDto>? get(int id) async {
    final response = await _httpClient.get('/games/$id');
    final game = GameResponseDto.fromJson(response.data);
    return game;
  }

  /// Gets all [Game]s.
  ///
  /// TODO: Mocked.
  Future<Set<GameResponseDto>> select() async {
    final response = await _httpClient.get('/games');
    final games = response.data.map<GameResponseDto>(GameResponseDto.fromJson).toSet();
    return games;
  }

  /// Creates a game.
  Future<int> create(GameCreationRequestDto game) async {
    final response = await _httpClient.post('/games', data: game.toJson());
    final id = response.data['id'];
    return id;
  }
}
