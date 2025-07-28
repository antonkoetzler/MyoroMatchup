import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameDetailsScreen].
final class GameDetailsScreenRoute extends PayloadRoute<int> {
  GameDetailsScreenRoute()
    : super(
        path: 'details/:id',
        builder: (_, gameId) => GameDetailsScreen(gameId: gameId),
      );
}
