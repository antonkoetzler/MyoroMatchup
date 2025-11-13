part of '../game_creation_screen.dart';

/// Frequency field of [_FrequencyDayTimeScreen] in [GameCreationScreen].
final class _FrequencyDayTimeScreenFrequencyField extends StatelessWidget {
  const _FrequencyDayTimeScreenFrequencyField();

  @override
  Widget build(context) {
    final viewModel = context.read<GameCreationScreenViewModel>();
    final state = viewModel.state;
    final frequency = state.frequency;
    final frequencyDayTimeScreenFrequencyFieldItemBuilder = viewModel.frequencyDayTimeScreenFrequencyFieldItemBuilder;
    final frequencyDayTimeScreenFrequencyFieldSelectedItemBuilder =
        viewModel.frequencyDayTimeScreenFrequencyFieldSelectedItemBuilder;
    final onFrequencyChanged = viewModel.onFrequencyChanged;

    final frequencyDayTimeScreenFrequencyFieldLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel;

    return MyoroSingleSelectionDropdown<GameFrequencyEnum>(
      label: frequencyDayTimeScreenFrequencyFieldLabel,
      items: GameFrequencyEnum.values.toSet(),
      itemBuilder: frequencyDayTimeScreenFrequencyFieldItemBuilder,
      selectedItem: frequency,
      onChanged: (f) => onFrequencyChanged(f!),
      allowDeselection: false,
      selectedItemBuilder: frequencyDayTimeScreenFrequencyFieldSelectedItemBuilder,
    );
  }
}
