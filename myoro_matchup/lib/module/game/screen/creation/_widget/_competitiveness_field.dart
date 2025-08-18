part of '../game_creation_screen.dart';

/// Competitiveness field of [GameDetailsScreen].
final class _CompetitivenessField extends StatelessWidget {
  const _CompetitivenessField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();

    return MyoroSingularDropdown<CompetitivenessEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        label: localization.gameCreationScreenCompetitivenessFieldLabel,
        menuConfiguration: MyoroMenuConfiguration(request: CompetitivenessEnum.values.toSet, itemBuilder: viewModel.competitivenessFieldItemBuilder),
        selectedItemBuilder: viewModel.competitivenessFieldSelectedItemBuilder,
      ),
    );
  }
}
