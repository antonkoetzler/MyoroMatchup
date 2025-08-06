part of '../game_creation_screen.dart';

/// Name field of [GameCreatonScreen].
final class _NameField extends StatelessWidget {
  const _NameField();

  @override
  Widget build(_) {
    return MyoroInput(configuration: MyoroInputConfiguration(label: localization.gameCreationScreenNameFieldLabel));
  }
}
