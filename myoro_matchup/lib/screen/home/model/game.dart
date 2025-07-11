import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'game.g.dart';

/// Model representing a game.
@immutable
@myoroModel
final class Game with _$GameMixin {
  const Game({required this.id});

  Game.fake() : id = faker.randomGenerator.integer(9999);

  /// ID of the [Game].
  final int id;
}
