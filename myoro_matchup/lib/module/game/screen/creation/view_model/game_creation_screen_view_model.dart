import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_state.dart';

/// View model of [GameCreationScreen].
final class GameCreationScreenViewModel {
  /// State.
  static const _state = GameCreationScreenState();

  /// [_state] getter.
  GameCreationScreenState get state => _state;

  /// Sport field's [MyoroMenuConfiguration.itemBuilder].
  MyoroMenuItem sportFieldItemBuilder(SportsEnum value) {
    return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: value.name));
  }

  /// Sport field's [MyoroSingularDropdownConfiguration.selectedItemBuilder].
  String sportFieldSelectedItemBuilder(SportsEnum value) {
    return value.name;
  }
}
