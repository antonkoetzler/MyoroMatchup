import 'package:injectable/injectable.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_state.dart';

/// View model of [GameCreationScreen].
@injectable
final class GameCreationScreenViewModel {
  /// State.
  static const _state = GameCreationScreenState();

  /// [_state] getter.
  GameCreationScreenState get state {
    return _state;
  }
}
