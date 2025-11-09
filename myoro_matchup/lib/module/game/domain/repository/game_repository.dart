import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository of [Game]s.
@injectable
final class GameRepository {
  /// Default constructor.
  GameRepository(this.httpClient);

  /// HTTP client.
  final HttpClient httpClient;

  /// Gets a [Game]
  ///
  /// TODO: Mocked.
  Future<GameResponseDto>? get(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return GameResponseDto.fake();
  }

  /// Gets all [Game]s.
  ///
  /// TODO: Mocked.
  Future<Set<GameResponseDto>> select() async {
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(faker.randomGenerator.integer(10), (_) => GameResponseDto.fake()).toSet();
  }

  /// Creates a [Game].
  Future<GameResponseDto> create(GameCreationRequestDto game) async {
    // final response = await httpClient.post('/games', data: game.toJson());
    // return GameResponseDto.fromJson(response.data);
    print(const JsonEncoder.withIndent('  ').convert(game.toJson()));
    await Future.delayed(const Duration(seconds: 2));
    return GameResponseDto.fake();
  }
}
