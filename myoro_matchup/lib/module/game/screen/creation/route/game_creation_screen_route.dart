import 'package:myoro_matchup/myoro_matchup.dart';

/// [Route] of [GameCreationScreen].
final class GameCreationScreenRoute extends NoPayloadRoute {
  GameCreationScreenRoute(String name) : super(name: name, child: const GameCreationScreen());
}
