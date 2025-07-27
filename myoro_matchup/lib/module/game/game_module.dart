import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [Module]
final class GameModule extends Module {
  static const gameListingScreenRoute = '/game-listing';
  static const gameDetailsScreenRoute = '/game-details';

  GameModule()
    : super(
        route: GoRoute(
          path: gameListingScreenRoute,
          builder: (_, _) => const GameListingScreen(),
          routes: [GoRoute(path: gameDetailsScreenRoute, builder: (_, _) => const GameDetailsScreen())],
        ),
        themeExtensionsBuilder: (_, colorScheme, textTheme) => [
          GameListingScreenThemeExtension.builder(colorScheme, textTheme),
          const GameDetailsScreenThemeExtension.builder(),
        ],
      );
}
