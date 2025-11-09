part of '../game_creation_screen.dart';

/// Time field of [_FrequencyDayTimeScreen] in [GameCreationScreen].
final class _FrequencyDayTimeScreenTimeField extends StatelessWidget {
  const _FrequencyDayTimeScreenTimeField();

  @override
  Widget build(context) {
    final gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel;
    final gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel =
        localization.gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel;

    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    final viewModel = context.read<GameCreationScreenViewModel>();
    final startTimeValidation = viewModel.startTimeValidation;
    final onStartTimeChanged = viewModel.onStartTimeChanged;
    final endTimeValidation = viewModel.endTimeValidation;
    final onEndTimeChanged = viewModel.onEndTimeChanged;

    return Row(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: MyoroTimePickerInput(
            label: gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel,
            validation: startTimeValidation,
            onChanged: onStartTimeChanged,
          ),
        ),
        Expanded(
          child: MyoroTimePickerInput(
            label: gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel,
            validation: endTimeValidation,
            onChanged: onEndTimeChanged,
          ),
        ),
      ],
    );
  }
}
