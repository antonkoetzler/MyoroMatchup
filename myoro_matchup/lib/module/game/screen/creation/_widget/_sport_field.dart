part of '../game_creation_screen.dart';

/// Sport field of [GameCreationScreen].
final class _SportField extends StatelessWidget {
  const _SportField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();

    return MyoroSingularDropdown<SportsEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: localization.gameCreationScreenSportFieldLabel,
        menuConfiguration: MyoroMenuConfiguration(
          request: SportsEnum.values.toSet,
          itemBuilder: viewModel.sportFieldItemBuilder,
        ),
        selectedItemBuilder: viewModel.sportFieldSelectedItemBuilder,
      ),
    );
  }
}
