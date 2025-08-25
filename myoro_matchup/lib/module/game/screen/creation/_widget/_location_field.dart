part of '../game_creation_screen.dart';

/// Location field of [GameCreationScreen].
final class _LocationField extends StatelessWidget {
  const _LocationField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    return const MmLocationInput(configuration: MmLocationInputConfiguration(type: LocationTypeEnum.place));
  }
}
