part of '../game_creation_screen.dart';

/// Date field of [GameCreationScreen].
final class _DateField extends StatelessWidget {
  const _DateField();

  @override
  Widget build(_) {
    return const MyoroDatePickerInput(configuration: MyoroDatePickerInputConfiguration());
  }
}
