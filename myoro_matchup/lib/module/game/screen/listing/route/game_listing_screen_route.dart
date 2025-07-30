import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameListingScreen].
final class GameListingScreenRoute extends NoPayloadRoute {
  GameListingScreenRoute()
    : super(parentLocation: AppRouter.gameModuleRoute, name: 'listing', child: const GameListingScreen());
}
