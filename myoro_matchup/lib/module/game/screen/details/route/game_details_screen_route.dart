import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameDetailsScreen].
final class GameDetailsScreenRoute extends PayloadRoute<int> {
  GameDetailsScreenRoute()
    : super(
        parentLocation: Routes.gameRoutes.parentDirectory,
        name: 'details',
        builder: (_, gameId) {
          return GameDetailsScreen(gameId);
        },
      );
}
