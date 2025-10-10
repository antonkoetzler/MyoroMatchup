import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_creation_screen_state.dart';

/// View model of [GameCreationScreen].
final class GameCreationScreenViewModel {
  /// State.
  final _state = GameCreationScreenState();

  /// [_state] getter.
  GameCreationScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Sport field's [MyoroMenuConfiguration.itemBuilder].
  MyoroMenuItem sportFieldItemBuilder(SportsEnum value) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: value.name),
      ),
    );
  }

  /// Sport field's [MyoroSingularDropdownConfiguration.selectedItemBuilder].
  String sportFieldSelectedItemBuilder(SportsEnum value) {
    return value.name;
  }

  /// Competitiveness field's [MyoroMenuConfiguration.itemBuilder].
  MyoroMenuItem competitivenessFieldItemBuilder(CompetitivenessEnum value) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: value.formattedName),
      ),
    );
  }

  /// Competitiveness field's [MyoroSingularDropdownConfiguration.selectedItemBuilder].
  String competitivenessFieldSelectedItemBuilder(CompetitivenessEnum value) {
    return value.formattedName;
  }

  /// Player quantity field's [MyoroMenuConfiguration.itemBuilder].
  MyoroMenuItem playerQuantityFieldItemBuilder(int playerQuantity) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: playerQuantity.toString()),
      ),
    );
  }

  /// Player quantity field's [MyoroSingularDropdownConfiguration.selectedItemBuilder].
  String playerQuantityFieldSelectedItemBuilder(int playerQuantity) {
    return playerQuantity.toString();
  }

  /// Visibility field's [MyoroMenuConfiguration.itemBuilder].
  MyoroMenuItem visibilityFieldItemBuilder(VisibilityEnum visibility) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: visibility.label),
      ),
    );
  }

  /// Visibility field's [MyoroSingularDropdownConfiguration.selectedItemBuilder].
  String visibilityFieldSelectedItemBuilder(VisibilityEnum visibility) {
    return visibility.label;
  }

  /// Frequency field's [MyoroMenuConfiguration.itemBuilder].
  MyoroMenuItem frequencyFieldItemBuilder(FrequencyEnum value) {
    return MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        textConfiguration: MyoroTextConfiguration(text: value.label),
      ),
    );
  }

  /// Frequency field's [MyoroSingularDropdownConfiguration.selectedItemBuilder].
  String frequencyFieldSelectedItemBuilder(FrequencyEnum value) {
    return value.label;
  }
}
