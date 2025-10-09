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

    return MyoroSingleSelectionDropdown<int>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: localization.gameCreationScreenPlayerQuantityFieldLabel,
        enabled: _state.sport != null,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: List.generate(_state.sport?.minPlayers ?? 0, (i) => i + 1).toSet,
          itemBuilder: playerQuantityFieldItemBuilder,
        ),
        selectedItemBuilder: playerQuantityFieldSelectedItemBuilder,
      ),
    );
  }
}
