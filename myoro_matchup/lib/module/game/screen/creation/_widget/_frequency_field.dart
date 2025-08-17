part of '../game_creation_screen.dart';

/// Frequency field of [GameCreationScreen].
final class _FrequencyField extends StatelessWidget {
  const _FrequencyField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final frequencyFieldItemBuilder = viewModel.frequencyFieldItemBuilder;
    final frequencyFieldSelectedItemBuilder = viewModel.frequencyFieldSelectedItemBuilder;

    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        menuConfiguration: MyoroMenuConfiguration(
          request: FrequencyEnum.values.toSet,
          itemBuilder: frequencyFieldItemBuilder,
        ),
        selectedItemBuilder: frequencyFieldSelectedItemBuilder,
      ),
    );
  }
}
