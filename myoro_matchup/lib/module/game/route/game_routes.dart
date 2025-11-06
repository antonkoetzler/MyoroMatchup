import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of modules.
final class GameRoutes {
  /// [GameCreationScreen].
  late final gameCreationScreen = GameCreationScreenRoute();

  /// [GameDetailsScreen]
  late final gameDetailsScreen = GameDetailsScreenRoute();

  /// [GameListingScreen]
  late final gameListingScreen = GameListingScreenRoute();
}
