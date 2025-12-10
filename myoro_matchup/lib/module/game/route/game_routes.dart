import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route]s of the game module.
final class GameRoutes extends RouteRepository {
  /// Default constructor.
  GameRoutes(String rootLocation)
    : _gameCreationScreen = GameCreationScreenRoute(rootLocation),
      _gameDetailsScreen = GameDetailsScreenRoute(rootLocation),
      super(rootLocation: rootLocation);

  /// [GameCreationScreen].
  final GameCreationScreenRoute _gameCreationScreen;

  /// [GameDetailsScreen]
  final GameDetailsScreenRoute _gameDetailsScreen;

  /// [_gameCreationScreen] getter.
  GameCreationScreenRoute get gameCreationScreen {
    return _gameCreationScreen;
  }

  /// [_gameDetailsScreen] getter.
  GameDetailsScreenRoute get gameDetailsScreen {
    return _gameDetailsScreen;
  }
}
