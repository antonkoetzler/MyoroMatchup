import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameDetailsScreen].
final class GameDetailsScreenRoute extends PayloadRoute<int> {
  GameDetailsScreenRoute(String rootLocation)
    : super(
        parentDirectory: rootLocation,
        name: 'details',
        builder: (_, gameId) {
          return GameDetailsScreen(gameId);
        },
      );
}
