import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameCreationScreen].
final class GameCreationScreenRoute extends NoPayloadRoute {
  GameCreationScreenRoute()
    : super(parentLocation: Routes.gameRoutes.parentDirectory, name: 'creation', child: const GameCreationScreen());
}
