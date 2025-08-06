import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameCreationScreen].
final class GameCreationScreenRoute extends NoPayloadRoute {
  GameCreationScreenRoute()
    : super(parentLocation: AppRouter.gameModuleRoute, name: 'creation', child: const GameCreationScreen());
}
