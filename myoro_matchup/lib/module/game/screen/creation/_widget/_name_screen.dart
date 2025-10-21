part of '../game_creation_screen.dart';

/// Name screen of [GameCreationScreen].
final class _NameScreen extends StatelessWidget {
  const _NameScreen();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final onNameChanged = viewModel.onNameChanged;

    final gameCreationScreenNameScreenTitle = localization.gameCreationScreenNameScreenTitle;
    final gameCreationScreenNameScreenNameInputPlaceholder =
        localization.gameCreationScreenNameScreenNameInputPlaceholder;

    return _Screen(
      title: gameCreationScreenNameScreenTitle,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          placeholder: gameCreationScreenNameScreenNameInputPlaceholder,
          onChanged: onNameChanged,
        ),
      ),
    );
  }
}
