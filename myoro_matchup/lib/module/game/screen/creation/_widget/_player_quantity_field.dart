part of '../game_creation_screen.dart';

/// Player quantity field of [GameCreationScreen].
final class _PlayerQuantityField extends StatelessWidget {
  const _PlayerQuantityField(this._state);

  final GameCreationScreenState _state;

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final playerQuantityFieldItemBuilder = viewModel.playerQuantityFieldItemBuilder;
    final playerQuantityFieldSelectedItemBuilder = viewModel.playerQuantityFieldSelectedItemBuilder;

    return MyoroSingularDropdown<int>(
      configuration: MyoroSingularDropdownConfiguration(
        enabled: _state.sport != null,
        menuConfiguration: MyoroMenuConfiguration(
          request: List.generate(_state.sport?.minPlayers ?? 0, (i) => i + 1).toSet,
          itemBuilder: playerQuantityFieldItemBuilder,
        ),
        selectedItemBuilder: playerQuantityFieldSelectedItemBuilder,
      ),
    );
  }
}
