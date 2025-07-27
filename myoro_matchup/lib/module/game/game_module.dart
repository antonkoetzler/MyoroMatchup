import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [Module]
final class GameModule extends Module {
  static const _prefix = '/game';
  static const gameListingScreenRoute = '$_prefix/listing';
  static const gameDetailsScreenRoute = '$_prefix/details';

  GameModule()
    : super(
        route: GoRoute(
          path: _prefix,
          builder: (_, _) => const GameListingScreen(),
          routes: [
            GoRoute(path: 'listing', builder: (_, _) => const GameListingScreen()),
            GoRoute(path: 'details', builder: (_, _) => const GameDetailsScreen()),
          ],
        ),
        themeExtensionsBuilder: (_, colorScheme, textTheme) => [
          GameListingScreenThemeExtension.builder(colorScheme, textTheme),
          const GameDetailsScreenThemeExtension.builder(),
        ],
      );
}
