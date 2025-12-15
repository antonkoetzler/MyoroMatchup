import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameCreationScreen].
final class GameCreationScreenRoute extends NoPayloadRoute {
  /// Default constructor.
  GameCreationScreenRoute(String rootLocation)
    : super(parentDirectory: rootLocation, name: 'creation', child: const GameCreationScreen());
}
