part of '../game_creation_screen.dart';

/// Bi-weekly time field of [_FrequencyDayTimeScreen] in [GameCreationScreen].
final class _FrequencyDayTimeScreenBiWeeklyTimeField extends StatelessWidget {
  const _FrequencyDayTimeScreenBiWeeklyTimeField();

  @override
  Widget build(context) {
    final gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel;
    final gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel;

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    final viewModel = context.read<GameCreationScreenViewModel>();
    final biWeeklyStartTimeValidation = viewModel.biWeeklyStartTimeValidation;
    final onBiWeeklyStartTimeChanged = viewModel.onBiWeeklyStartTimeChanged;
    final biWeeklyEndTimeValidation = viewModel.biWeeklyEndTimeValidation;
    final onBiWeeklyEndTimeChanged = viewModel.onBiWeeklyEndTimeChanged;

    return Row(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: MyoroTimePickerInput(
            label: gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel,
            validation: biWeeklyStartTimeValidation,
            onChanged: onBiWeeklyStartTimeChanged,
          ),
        ),
        Expanded(
          child: MyoroTimePickerInput(
            label: gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel,
            validation: biWeeklyEndTimeValidation,
            onChanged: onBiWeeklyEndTimeChanged,
          ),
        ),
      ],
    );
  }
}
