part of '../game_creation_screen.dart';

/// Sport field of [GameCreationScreen].
final class _SportField extends StatelessWidget {
  const _SportField(this._state);

  final GameCreationScreenState _state;

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();

    return MyoroSingleSelectionDropdown<SportsEnum>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: localization.gameCreationScreenSportFieldLabel,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: SportsEnum.values.toSet,
          itemBuilder: viewModel.sportFieldItemBuilder,
          selectedItem: _state.sport,
        ),
        selectedItemBuilder: viewModel.sportFieldSelectedItemBuilder,
        onChanged: (sport) => _state.sport = sport,
      ),
    );
  }
}
