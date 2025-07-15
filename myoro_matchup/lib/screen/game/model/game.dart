import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game.g.dart';

/// Model representing a game.
@immutable
@myoroModel
final class Game with _$GameMixin {
  const Game({required this.id, required this.name, this.profilePicture, this.banner, required this.sport});

  Game.fake()
    : id = faker.randomGenerator.integer(9999),
      name = faker.lorem.word(),
      profilePicture = faker.randomGenerator.boolean()
          ? kTestProfilePictures[faker.randomGenerator.integer(kTestProfilePictures.length)]
          : null,
      banner = faker.randomGenerator.boolean()
          ? kTestBanners[faker.randomGenerator.integer(kTestBanners.length)]
          : null,
      sport = SportsEnum.fake();

  /// ID of the [Game].
  final int id;

  /// Name of the [Game].
  final String name;

  /// Profile picture of the [Game].
  final String? profilePicture;

  /// Banner of the [Game].
  final String? banner;

  /// Sport being played.
  final SportsEnum sport;
}
