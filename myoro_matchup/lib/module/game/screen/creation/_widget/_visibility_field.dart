part of '../game_creation_screen.dart';

/// Visilibility field of [GameCreationScreen].
final class _VisibilityField extends StatelessWidget {
  const _VisibilityField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final visibilityFieldItemBuilder = viewModel.visibilityFieldItemBuilder;
    final visibilityFieldSelectedItemBuilder = viewModel.visibilityFieldSelectedItemBuilder;

    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        menuConfiguration: MyoroMenuConfiguration(
          request: VisibilityEnum.values.toSet,
          itemBuilder: visibilityFieldItemBuilder,
        ),
        selectedItemBuilder: visibilityFieldSelectedItemBuilder,
      ),
    );
  }
}
