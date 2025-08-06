import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of modules.
final class GameRoutes {
  /// [GameCreationScreen].
  late final _gameCreationScreen = GameCreationScreenRoute();
  GameCreationScreenRoute get gameCreationScreen => _gameCreationScreen;

  /// [GameDetailsScreen]
  late final _gameDetailsScreen = GameDetailsScreenRoute();
  GameDetailsScreenRoute get gameDetailsScreen => _gameDetailsScreen;

  /// [GameListingScreen]
  late final _gameListingScreen = GameListingScreenRoute();
  GameListingScreenRoute get gameListingScreen => _gameListingScreen;
}
