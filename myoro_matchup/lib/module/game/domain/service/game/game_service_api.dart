import 'dart:async';

import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// API implementation of [GameService].
@Singleton(as: GameService)
final class GameServiceApi implements GameService {
  @override
  // TODO: Implement.
  Future<int> create(Game model) {
    throw UnimplementedError();
  }

  @override
  // TODO: Implement.
  Future<Game>? get({Map<String, dynamic>? queryParameters}) {
    throw UnimplementedError();
  }

  @override
  // TODO: Mocked.
  Future<Set<Game>> select({Map<String, dynamic>? queryParameters}) async {
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(faker.randomGenerator.integer(10), (_) => Game.fake()).toSet();
  }

  @override
  // TODO: Implement.
  Future<void> update(Game data) {
    throw UnimplementedError();
  }

  @override
  // TODO: Implement.
  Future<void> delete(int id) {
    throw UnimplementedError();
  }
}
