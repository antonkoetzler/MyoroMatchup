import 'package:go_router/go_router.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// [Module]
final class GameModule extends Module {
  static const gameScreenRoute = '/game';

  GameModule()
    : super(
        route: GoRoute(path: gameScreenRoute, builder: (_, _) => const GameScreen()),
        themeExtensionsBuilder: (_, colorScheme, textTheme) => [
          GameScreenThemeExtension.builder(colorScheme, textTheme),
        ],
      );
}
