import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameDetailsScreen].
final class GameDetailsScreenRoute extends PayloadRoute<int> {
  GameDetailsScreenRoute()
    : super(
        parentLocation: AppRouter.gameModuleRoute,
        name: 'details',
        builder: (_, gameId) => GameDetailsScreen(gameId: gameId),
      );
}
