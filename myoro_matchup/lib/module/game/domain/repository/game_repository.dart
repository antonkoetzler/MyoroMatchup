import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Repository of [Game]s.
@injectable
final class GameRepository {
  /// Gets a [Game]
  Future<Game>? get(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Game.fake();
  }

  /// Gets all [Game]s.
  Future<Set<Game>> select() async {
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(faker.randomGenerator.integer(10), (_) => Game.fake()).toSet();
  }
}
